Pdf :: #import,file "libharu/unix.jai";

Document :: struct {
    pdf_context: Pdf_Context;
    haru_doc: Pdf.Doc;
    pages: [..] Pdf.Page;

    page_size: Pdf.PageSizes;
    page_orientation: Pdf.PageDirection;
    page_margins: [4] float;
    page_background: Vector3;
    text_color: Vector3;

    header_height: float;
    footer_height: float;

    alignment: Pdf.TextAlignment;
    font: Pdf.Font;
    font_size: float;
    word_wrap := true;
    line_height_factor: float = 1.3;

    padding: Vector2;

    position: Vector2;

    table: *Table;
}

Table :: struct {
    padding: Vector2;

    columns:         [..] Column;

    header:          [..] Cell_State;

    last_row:        [..] Cell_State;
    current_row:     [..] Cell_State;

    num_rows := 0;

    next_cell_state: Cell_State;

    cell_index: int;

    Column :: struct {
        using default: Cell_Style;
        width: float;
    }

    Cell_Content :: struct {
        text: string;
        colspan: int;
    }

    Cell_Style :: struct {
        alignment: Pdf.TextAlignment;

        borders: [4] Border;
        padding: Vector2;
    }

    Cell_State :: struct {
        content: Cell_Content;
        style: Cell_Style;

        font: Pdf.Font;
        font_size: float;

        skipped: bool;
        width: float;
        height: float;
        merged_borders: [4] Border; // @ToDo: Set when the cell is created an when we merge
    }

    Border :: struct {
        size: float;
        color: Vector3;
    }
}

Border_Direction :: enum_flags u8 {
    TOP    :: 0x1;
    RIGHT  :: 0x2;
    BOTTOM :: 0x4;
    LEFT   :: 0x8;

    X      :: RIGHT | LEFT;
    Y      :: TOP | BOTTOM;
    ALL    :: X | Y;
}

init :: (document: *Document, page_size: Pdf.PageSizes, page_orientation: Pdf.PageDirection, page_margins: [4] float, page_background := Vector3.{1,1,1}, text_color := Vector3.{0,0,0}) -> bool {
    pdf := Pdf.New(pdf_error_handler, *document.pdf_context);
    if !pdf {
        log_error("Error: Cannot create PDF object.");
        return false;
    }

    Pdf.UseUTFEncodings(pdf);

    document.haru_doc = pdf;

    document.page_size = page_size;
    document.page_orientation = page_orientation;
    document.page_margins = page_margins;
    document.page_background = page_background;
    document.text_color = text_color;

    add_page(document);

    return true;
}

deinit :: (document: *Document) {
    // @ToDo
    defer Pdf.Free(document.haru_doc);
}

add_page :: (using document: *Document) {
    page := Pdf.AddPage(haru_doc);
    Pdf.Page_SetSize(page, page_size, page_orientation);
    if font {
        Pdf.Page_SetFontAndSize(page, font, font_size);
        Pdf.Page_SetTextLeading(page, font_size * line_height_factor);
    }

    array_add(*pages, page);

    height := Pdf.Page_GetHeight(page);
    position.x = page_margins[3];
    position.y = height - page_margins[0];

    Pdf.Page_SetRGBFill(page, page_background.x, page_background.y, page_background.z);
    Pdf.Page_Rectangle(page, 0, 0, Pdf.Page_GetWidth(page), height);
    Pdf.Page_Fill(page);

    Pdf.Page_SetRGBFill(page, text_color.x, text_color.y, text_color.z);

    // For debugging:
    Pdf.Page_Rectangle(page, page_margins[3], page_margins[2], get_net_page_width(document, page), get_net_page_height(document, page));
    Pdf.Page_Stroke(page);
}

get_current_page :: (using document: *Document) -> Pdf.Page {
    return pages[pages.count - 1];
}

get_net_page_dimensions :: (using document: *Document) -> Vector2 {
    page := get_current_page(document);
    return .{get_net_page_width(document, page), get_net_page_height(document, page)};
}

get_net_page_width :: (using document: *Document) -> float {
    page := get_current_page(document);
    return Pdf.Page_GetWidth(page) - page_margins[1] - page_margins[3];
}

get_net_page_height :: (using document: *Document) -> float {
    page := get_current_page(document);
    return Pdf.Page_GetHeight(page) - page_margins[0] - page_margins[2];
}

get_net_page_width :: (using document: *Document, page: Pdf.Page) -> float {
    return Pdf.Page_GetWidth(page) - page_margins[1] - page_margins[3];
}

get_net_page_height :: (using document: *Document, page: Pdf.Page) -> float {
    return Pdf.Page_GetHeight(page) - page_margins[0] - page_margins[2];
}

set_font :: (document: *Document, font: Pdf.Font, size: float) {
    document.font = font;
    document.font_size = size;
}

compute_text_size :: (using document: *Document, text: string, max_width: float = -1) -> Vector2, success: bool {
    size, success := compute_text_size(document, text, font, font_size, max_width);
    return size, success;
}

compute_text_size :: (using document: *Document, text: string, text_font: Pdf.Font, text_font_size: float, max_width: float = -1) -> Vector2, success: bool {
    c_text := temp_c_string(text); // @Speed
    page := get_current_page(document);
    Pdf.Page_SetFontAndSize(page, text_font, text_font_size);

    width := max_width;
    if (width < 0) {
        width = get_net_page_width(document, page);
    }

    line_height := text_font_size * line_height_factor;

    result: Vector2;
    if text.count result.y += line_height;

    offset := 0;
    while offset < text.count {
        line_end_offset := find_index_from_left(text, #char "\n", offset);
        if line_end_offset == offset {
            result.y += line_height;
            offset += 1;
            continue;
        }

        if line_end_offset >= 0 c_text[line_end_offset] = 0;

        line_width: float;
        line_characters := Pdf.Page_MeasureText(page, c_text + offset, width, xx word_wrap, *line_width);
        if line_characters == 0 {
            if word_wrap {
                line_characters = Pdf.Page_MeasureText(page, c_text + offset, width, 0, *line_width);
            }
            if line_characters == 0 {
                return result, false;
            }
        }

        offset += line_characters;
        if line_width > result.x  result.x = line_width;

        if offset != text.count {
            result.y += line_height;
        }

        if offset == line_end_offset {
            offset += 1;
        }
        assert(offset <= text.count);
    }

    return result, true;
}

set_page_header_height :: (using document: *Document, height: float) {
    header_height = height;
}

set_page_footer_height :: (using document: *Document, height: float) {
    footer_height = height;
}

add_image :: (using document: *Document, logo: $T, logo_width: float, logo_height: float) {
    // @Incomplete
}

set_position :: (using document: *Document, x: float, y: float) {
    position.x = x + page_margins[3];
    position.y = y + page_margins[2];
}

set_position :: (using document: *Document, new_position: Vector2) {
    position.x = new_position.x + page_margins[3];
    position.y = new_position.y + page_margins[2];
}

get_position :: (using document: *Document) -> Vector2 {
    return .{position.x - page_margins[3], position.y - page_margins[2]};
}

get_line_height :: (using document: *Document) -> float {
    return font_size * line_height_factor;
}

add_text :: (using document: *Document, text: string, max_width: float = -1) -> bool {
    // @Incomplete: Respect document.padding!
    // @Incomplete @ToDo: Check if a table is active!
    return render_text(document, text, font, font_size, alignment, max_width);
}

render_text :: (using document: *Document, text: string, text_font: Pdf.Font, text_font_size: float, text_alignment: Pdf.TextAlignment, min_x: float = -1, max_width: float = -1) -> bool {
    log("render_text: \"%\" % %", text, text_font, text_font_size);
    c_text := temp_c_string(text); // @Speed

    page := get_current_page(document);
    Pdf.Page_BeginText(page);
    Pdf.Page_SetFontAndSize(page, text_font, text_font_size);
    Pdf.Page_SetTextLeading(page, text_font_size * line_height_factor);
    Pdf.Page_MoveTextPos(page, position.x, position.y);

    haru_min_x: float;
    if min_x < 0 {
        haru_min_x = page_margins[3];
    } else {
        haru_min_x = page_margins[3] + min_x;
    }
    haru_width := max_width;
    if (haru_width < 0) {
        haru_width = Pdf.Page_GetWidth(page) - page_margins[1] - haru_min_x;
    }

    line_height := get_line_height(document);

    offset := 0;
    success := true;
    while offset < text.count {
        if position.y < page_margins[2] {
            Pdf.Page_EndText(page);
            add_page(document);
            page = get_current_page(document);
            position.y -= line_height;
            Pdf.Page_BeginText(page);
            Pdf.Page_MoveTextPos(page, position.x, position.y);
        }

        wanted_end_offset := text.count;
        line_end_offset := find_index_from_left(text, #char "\n", offset);
        if line_end_offset >= 0  {
            c_text[line_end_offset] = 0;
            wanted_end_offset = line_end_offset;
        }

        line_contains_characters := (line_end_offset < 0 || line_end_offset != offset);
        line_width: float;
        if line_contains_characters {
            remaining_width := haru_width - (position.x - haru_min_x);
            line_characters := Pdf.Page_MeasureText(page, c_text + offset, remaining_width, xx word_wrap, *line_width);
            if line_characters == 0 {
                if position.x == page_margins[3] {
                    // We’re alredy at the start of the row, so breaking into the next line won't help
                    if word_wrap {
                        line_characters = Pdf.Page_MeasureText(page, c_text + offset, remaining_width, 0, *line_width);
                    }
                    if line_characters == 0 {
                        log("Uh oh");
                        Debug.breakpoint();
                        success = false;
                        break;
                    }
                }
            }

            if line_characters {
                if offset + line_characters != wanted_end_offset {
                    c_text[offset + line_characters] = 0;
                }

                if text_alignment == {
                    case .LEFT;
                    case .RIGHT;
                        delta := remaining_width - line_width;
                        Pdf.Page_MoveTextPos(page, delta, 0);
                        position.x += delta;
                    case .CENTER;
                        delta := (remaining_width - line_width) / 2;
                        Pdf.Page_MoveTextPos(page, delta, 0);
                        position.x += delta;
                    case;
                        assert(false, "@Incomplete: alignment mode % is not yet supported", text_alignment);
                }


                Pdf.Page_ShowText(page, c_text + offset);

                if offset + line_characters != wanted_end_offset {
                    c_text[offset + line_characters] = text[offset + line_characters];
                }
                offset += line_characters;
            }
        }

        if offset != text.count {
            Pdf.Page_MoveTextPos(page, -position.x + haru_min_x, -line_height);
            position.y -= line_height;
            position.x = haru_min_x;
        } else {
            position.x += line_width;
        }

        if offset == line_end_offset {
            offset += 1;
        }
    }

    Pdf.Page_EndText(page);

    return success;
}

//html_content as generated by Trix
add_rich_text :: (using document: *Document, html_content: string) {
    // @Incomplete
}

add_hr :: (using document: *Document, h_margin: float = 0) {
    // @Incomplete
}

set_text_alignment :: (document: *Document, text_alignment: Pdf.TextAlignment) {
    document.alignment = text_alignment;
}

set_padding :: (document: *Document, padding: Vector2) {
    document.padding = padding;
}

begin_footer :: (using document: *Document, page_index: int) {
    // @Incomplete
}

end_footer :: (using document: *Document) {
    // @Incomplete
}

begin_table :: (using document: *Document, column_widths: .. float) {
    table = New(Table);
    array_resize(*table.columns, column_widths.count);

    unspecified_width := 1.0;
    num_flexible_columns := 0;
    for * table.columns {
        it.width = column_widths[it_index];
        if it.width > 0 {
            unspecified_width -= it.width;
        } else {
            num_flexible_columns += 1;
        }

        // Copy the current document state as default for each cell
        it.alignment = document.alignment;
        it.padding = document.padding;
    }
    assert(unspecified_width >= 0); // @ToDo: Epsilon

    for * table.columns {
        if it.width <= 0 {
            it.width = unspecified_width / num_flexible_columns;
        }
    }
}

set_default_cell_alignments :: (using document: *Document, alignments: .. Pdf.TextAlignment) {
    assert(table != null);
    assert(alignments.count == table.columns.count);
    for alignments {
        table.columns[it_index].alignment = it;
    }

    document.alignment = table.columns[table.current_row.count].alignment;
}

set_default_cell_paddings :: (using document: *Document, paddings: .. Vector2) {
    assert(table != null);
    assert(paddings.count == table.columns.count);
    for paddings {
        table.columns[it_index].padding = it;
    }

    document.padding = table.columns[table.current_row.count].padding;
}

set_row_border :: (using document: *Document, size: float, color := Vector3.{0,0,0}, direction := Border_Direction.ALL) {
    assert(table != null);
    // @Incomplete
}

set_cell_border :: (using document: *Document, size: float, color := Vector3.{0,0,0}, direction := Border_Direction.ALL) {
    assert(table != null);
    // @Incomplete
}

add_table_row :: (using document: *Document, texts: .. string) {
    assert(table != null);
    assert(texts.count == table.columns.count);
    for texts add_cell(document, it);
}

add_cell :: (using document: *Document, text: string) {
    add_cell(document, .{text = text});
}

add_cell :: (using document: *Document, data: Table.Cell_Content) {
    assert(table != null);
    assert(table.columns.count != 0);

    state := table.next_cell_state;
    state.style.alignment = alignment;
    state.style.padding = padding;
    state.font = font;
    state.font_size = font_size;
    state.content = data;

    if state.content.colspan < 1 state.content.colspan = 1;
    assert(table.current_row.count + state.content.colspan <= table.columns.count);

    array_add(*table.current_row, state);
    for 1..state.content.colspan-1 {
        array_add(*table.current_row, .{skipped = true});
    }

    if table.current_row.count == table.columns.count {
        table.num_rows += 1;
        compute_height(document, table.current_row);
        y_after_last_row := position.y;
        if table.last_row  y_after_last_row -= table.last_row[0].height;

        current_row_fits := (y_after_last_row - table.current_row[0].height >= page_margins[2]);

        if table.last_row {
            if current_row_fits merge_borders(table.last_row, table.current_row);
            render_row(document, table.last_row);
        }

        if !current_row_fits {
            add_page(document);
            if table.header {
                merge_borders(table.header, table.current_row);
                render_row(document, table.header);
            }
        }

        // @Incomplete: What do we do if a row doesn’t fit on the page on its own!?
        assert(position.y - table.current_row[0].height >= page_margins[2]);

        if !table.header {
            array_copy(*table.header, table.current_row);
        }

        old_last := table.last_row;
        table.last_row = table.current_row;
        table.current_row = old_last;
        array_reset_keeping_memory(*table.current_row);
    }

    document.alignment = table.columns[table.current_row.count].alignment;
    document.padding = table.columns[table.current_row.count].padding;

    table.next_cell_state = .{style = table.columns[table.current_row.count].default};
}

end_table :: (using document: *Document) {
    assert(!table.current_row.count);
    if table.last_row {
        render_row(document, table.last_row);
        table.last_row.count = 0;
    }
    free(table);
}

render_row :: (using document: *Document, row: [] Table.Cell_State) {
    assert(table != null);
    assert(row.count == table.columns.count);

    net_width := get_net_page_width(document);

    min_x: float;
    row_start := position;
    min_y: float;

    for * col: row {
        if col.skipped continue;

        cell_width: float;
        for i: 0..col.content.colspan-1 {
            cell_width += net_width * table.columns[it_index + i].width;
        }
        content_width := cell_width - 2 * col.style.padding.x;

        descender_int_offset := Pdf.Font_GetDescent(col.font);
        descender_offset := (descender_int_offset * font_size) / 1000.0;
        ascender_int_offset := Pdf.Font_GetAscent(col.font);
        ascender_offset := (ascender_int_offset * font_size) / 1000.0;

        line_height := col.font_size * line_height_factor;
        font_padding := line_height + descender_offset - ascender_offset;

        cell_start_x := min_x;
        content_start_x := cell_start_x + col.style.padding.x;
        text_baseline_start_y := row_start.y - col.style.padding.y - (ascender_offset + font_padding / 2);

        position.x = page_margins[3] + content_start_x;
        position.y = text_baseline_start_y;

        // @ToDo: borders!
        render_text(document, col.content.text, col.font, col.font_size, col.style.alignment, min_x = content_start_x, max_width = content_width);
        min_x += cell_width;

        // // For debugging:
        // col_height := line_height - (position.y - text_baseline_start_y) + 2 * col.style.padding.y;
        // page := get_current_page(document);
        // if table.num_rows % 2 {
        //     pattern := float.[2, 6];
        //     Pdf.Page_SetDash(page, pattern.data, pattern.count, 0);
        //     Pdf.Page_SetRGBStroke(page, 0.8, 0, 0);
        // } else {
        //     pattern := float.[3, 7];
        //     Pdf.Page_SetDash(page, pattern.data, pattern.count, 3);
        //     Pdf.Page_SetRGBStroke(page, 0, 0.8, 0);
        // }
        // Pdf.Page_Rectangle(page, page_margins[3] + cell_start_x, row_start.y, cell_width, -col_height);
        // Pdf.Page_Stroke(page);
        // Pdf.Page_SetDash(page, null, 0, 0);
        // Pdf.Page_SetRGBStroke(page, 0, 0, 0);

        // Placeholder for real borders:
        page := get_current_page(document);
        Pdf.Page_Rectangle(page, page_margins[3] + cell_start_x, row_start.y, col.width, -col.height);
        Pdf.Page_Stroke(page);
        Pdf.Page_SetDash(page, null, 0, 0);
        Pdf.Page_SetRGBStroke(page, 0, 0, 0);
    }

    position.y = row_start.y - row[0].height;
}

compute_height :: (using document: *Document, row: [] Table.Cell_State) {
    assert(table != null);
    assert(row.count == table.columns.count);

    net_width := get_net_page_width(document);

    min_x: float;
    row_start := position;
    max_height: float;

    for * col: row {
        if col.skipped continue;

        col.width = 0;
        for i: 0..col.content.colspan-1 {
            col.width += net_width * table.columns[it_index + i].width;
        }

        content_width := col.width - 2 * col.style.padding.x;
        line_height := col.font_size * line_height_factor;

        text_size := compute_text_size(document, col.content.text, col.font, col.font_size, content_width);
        col_height := text_size.y + 2 * col.style.padding.y;
        max_height = Max(max_height, col_height);
    }

    for * col: row {
        col.height = max_height;
    }
}

merge_borders :: (upper: [] Table.Cell_State, lower: [] Table.Cell_State) {
    // @Incomplete
}


Pdf_Context :: struct {
    error: Pdf.STATUS;
    error_detail: Pdf.STATUS;
    // error_location: Source_Code_Location;

    // last_location: Source_Code_Location;
}

pdf_error_handler :: (error: Pdf.STATUS, detail: Pdf.STATUS, user_data: *void) -> void #c_call {
    data := cast(*Pdf_Context) user_data;
    if !data.error {
        data.error = error;
        data.error_detail = detail;
        // data.error_location = data.last_location;
    }
}

check_for_error :: (using pdf_context: Pdf_Context) {
    if error != Pdf.HPDF_OK {
        // log_error("Error at % while generating the PDF: 0x% (%)", error_location, formatInt(error, base = 16), error_detail);
        log_error("Error while generating the PDF: 0x% (%)", formatInt(error, base = 16), error_detail);
        exit(1);
    }
}

check_for_error :: (pdf: Pdf.Doc, loc := #caller_location) {
    error := Pdf.GetError(pdf);
    if error != Pdf.HPDF_OK {
        log_error("Error at % while generating the PDF: 0x% (%)", loc, formatInt(error, base = 16), Pdf.GetErrorDetail(pdf));
        exit(1);
    }
}

#import "Basic";
#import "Math";
#import "String";
Debug :: #import "Debug";
