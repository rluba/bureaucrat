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

    position: Vector2;

    table: *Table;
}

Table :: struct {
    columns:         [..] Column;

    header:          [..] Cell_State;

    last_row:        [..] Cell_State;
    current_row:     [..] Cell_State;

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
        padding: [4] float;
    }

    Cell_State :: struct {
        content: Cell_Content;
        style: Cell_Style;

        font: Pdf.Font;
        font_size: float;

        skipped: bool;
        height: float;
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
    c_text := temp_c_string(text); // @Speed
    page := get_current_page(document);
    Pdf.Page_SetFontAndSize(page, font, font_size);

    width := max_width;
    if (width < 0) {
        width = get_net_page_width(document, page);
    }

    line_height := font_size * line_height_factor;

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
    // @Incomplete @ToDo: Check if a table is active!
    return render_text(document, text, font, font_size, alignment, max_width);
}

render_text :: (using document: *Document, text: string, text_font: Pdf.Font, text_font_size: float, text_alignment: Pdf.TextAlignment, max_width: float = -1) -> bool {
    log("render_text: \"%\" % %", text, text_font, text_font_size);
    // @Incomplete @ToDo: Check if a table is active!
    c_text := temp_c_string(text); // @Speed

    page := get_current_page(document);
    Pdf.Page_BeginText(page);
    Pdf.Page_SetFontAndSize(page, text_font, text_font_size);
    Pdf.Page_SetTextLeading(page, text_font_size * line_height_factor);
    Pdf.Page_MoveTextPos(page, position.x, position.y);

    width := max_width;
    if (width < 0) {
        width = get_net_page_width(document, page); // @ToDo: Cell width
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
            remaining_width := width - (position.x - page_margins[3]);
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
            Pdf.Page_MoveTextPos(page, -position.x + page_margins[3], -line_height);
            position.y -= line_height;
            position.x = page_margins[3];
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

begin_footer :: (using document: *Document, page_index: int) {
    // @Incomplete
}

end_footer :: (using document: *Document) {
    // @Incomplete
}

begin_table :: (using document: *Document, column_widths: .. float) {
    table = New(Table);
    array_resize(*table.columns, column_widths.count);

    // Copy the current document state as default for each cell
    for * table.columns {
        it.alignment = document.alignment;
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
    state.font = font;
    state.font_size = font_size;
    state.content = data;

    array_add(*table.current_row, state);
    for 1..data.colspan-1 {
        array_add(*table.current_row, .{skipped = true});
    }

    if table.current_row.count == table.columns.count {
        compute_height(document, table.current_row);
        if table.last_row {
            merge_borders(table.last_row, table.current_row);
            render_row(document, table.last_row);
        }
        table.last_row = table.current_row;

        empty: [..] Table.Cell_State;
        table.current_row = empty;
    }

    document.alignment = table.columns[table.current_row.count].alignment;

    table.next_cell_state = .{style = table.columns[table.current_row.count].default};
}

end_table :: (using document: *Document) {
    assert(!table.current_row.count);
    if table.last_row {
        render_row(document, table.last_row);
        table.last_row.count = 0;
    }
    // free(table);
}

render_row :: (using document: *Document, row: [] Table.Cell_State) {
    for col: row {
        // @ToDo: Column width!
        // @ToDo: borders!
        // @ToDo: padding!
        // @ToDo: Colspan!
        if col.skipped continue;
        render_text(document, col.content.text, col.font, col.font_size, col.style.alignment);
        add_text(document, " ");
    }
    add_text(document, "\n");
}

compute_height :: (using document: *Document, row: [] Table.Cell_State) {
    // @Incomplete
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
