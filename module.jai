Pdf :: #import,file "libharu/unix.jai";

Document :: struct {
    pdf_context:        Pdf_Context;
    haru_doc:           Pdf.Doc;
    pages:              [..] Pdf.Page;
    page_infos:         [..] Page_Info;

    current_page:       Pdf.Page;
    current_page_info: *Page_Info;
    current_area:       Render_Area;

    page_size:          Pdf.PageSizes;
    page_orientation:   Pdf.PageDirection;
    page_margins:       [4] float;
    page_background:    Vector3;

    alignment:          Pdf.TextAlignment;
    font_settings:      Font_Settings;
    word_wrap           := true;
    line_height_factor: float = 1.3;

    padding:            [4] float;

    position:           Vector2;
    limits:             Render_Limits;

    table:              *Table;

    Render_Area :: enum {
        BODY;
        HEADER;
        FOOTER;
    }
}

Font_Settings :: struct {
    font:                Pdf.Font;
    font_size:           float;
    color:               Vector3;

    strikethrough_width: float;
    underline_width:     float;
}

Render_Limits :: struct {
    x: float;
    width: float;
}

Page_Info :: struct {
    header_height: float;
    footer_height: float;
    position:    Vector2;
}

Table :: struct {
    padding:        [4] float;

    columns:        [..] Column;

    header:         [..] Cell_State;

    second_to_last_row: [..] Cell_State;
    last_row:           [..] Cell_State;
    current_row:        [..] Cell_State;

    num_rows        := 0;
    num_footer_rows := -1;

    cell_index:     int;

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

        font_settings: Font_Settings;

        skipped: bool;
        row_start: Vector2;
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
    Pdf.SetCurrentEncoder(pdf, "UTF-8"); // Seems like it’s not necessary

    document.haru_doc = pdf;

    document.page_size = page_size;
    document.page_orientation = page_orientation;
    document.page_margins = page_margins;
    document.page_background = page_background;
    document.font_settings.color = text_color;

    document.limits.x = 0;
    page := add_page(document);

    document.limits.width = get_net_page_width(document, page);

    return true;
}

deinit :: (document: *Document) {
    // @ToDo
    defer Pdf.Free(document.haru_doc);
}

add_page :: (using document: *Document) -> Pdf.Page {
    assert(current_area == .BODY);

    if pages.count && current_area == .BODY {
        current_page_info.position = position; // Save the last position;
    }

    page := Pdf.AddPage(haru_doc);
    assert(page != null);
    Pdf.Page_SetSize(page, page_size, page_orientation);

    page_info: Page_Info;
    if current_page_info {
        page_info = <<current_page_info;
    }

    array_add(*pages, page);
    current_page_info = array_add(*page_infos);
    <<current_page_info = page_info;
    current_page = page;
    current_area = .BODY;

    height := Pdf.Page_GetHeight(page);
    position.x = page_margins[3] + limits.x;
    position.y = height - page_margins[0] - current_page_info.header_height;

    Pdf.Page_SetRGBFill(page, page_background.x, page_background.y, page_background.z);
    Pdf.Page_Rectangle(page, 0, 0, Pdf.Page_GetWidth(page), height);
    Pdf.Page_Fill(page);

    Pdf.Page_SetRGBFill(page, font_settings.color.x, font_settings.color.y, font_settings.color.z);

    // For debugging:
    // {
    //     pattern := float.[3, 7];
    //     Pdf.Page_SetDash(page, pattern.data, pattern.count, 3);
    //     Pdf.Page_SetRGBStroke(page, 0.4, 0.4, 0.9);
    //     Pdf.Page_Rectangle(page, page_margins[3], page_margins[2] + current_page_info.footer_height, get_net_page_width(document, page), get_net_page_height(document, page));
    //     Pdf.Page_Stroke(page);

    //     if current_page_info.header_height {
    //         Pdf.Page_SetRGBStroke(page, 0.9, 0.4, 0.4);
    //         Pdf.Page_Rectangle(page, page_margins[3], page_margins[2] + get_net_page_height(document, page) + current_page_info.footer_height, get_net_page_width(document, page), current_page_info.header_height);
    //         Pdf.Page_Stroke(page);
    //     }
    //     if current_page_info.footer_height {
    //         Pdf.Page_SetRGBStroke(page, 0.9, 0.4, 0.4);
    //         Pdf.Page_Rectangle(page, page_margins[3], page_margins[2], get_net_page_width(document, page), current_page_info.footer_height);
    //         Pdf.Page_Stroke(page);
    //     }

    //     Pdf.Page_SetDash(page, null, 0, 0);
    //     Pdf.Page_SetRGBStroke(page, 0, 0, 0);
    // }

    return current_page;
}

get_current_page :: (using document: *Document) -> Pdf.Page {
    return current_page;
}

get_net_page_dimensions :: (using document: *Document) -> Vector2 {
    page := get_current_page(document);
    return .{get_net_page_width(document, page), get_net_page_height(document, page)};
}

get_net_page_width :: (using document: *Document) -> float {
    page := get_current_page(document);
    return get_net_page_width(document, page);
}

get_net_page_height :: (using document: *Document) -> float {
    page := get_current_page(document);
    return get_net_page_height(document, page);
}

get_net_page_width :: (using document: *Document, page: Pdf.Page) -> float {
    return Pdf.Page_GetWidth(page) - page_margins[1] - page_margins[3];
}

get_net_page_height :: (using document: *Document, page: Pdf.Page) -> float {
    return Pdf.Page_GetHeight(page) - page_margins[0] - page_margins[2] - current_page_info.footer_height;
}

set_limits :: (document: *Document, limits: Render_Limits) {
    document.limits = limits;
}

clear_limits :: (document: *Document) {
    document.limits.x = 0;
    document.limits.width = get_net_page_width(document);
}

set_font :: (using document: *Document, font: Pdf.Font, size: float) {
    font_settings.font      = font;
    font_settings.font_size = size;
}

set_text_color :: (using document: *Document, color: Vector3) {
    font_settings.color = color;
}

set_strikethrough :: (using document: *Document, width: float) {
    font_settings.strikethrough_width = width;
}

set_underline :: (using document: *Document, width: float) {
    font_settings.underline_width = width;
}

compute_text_size :: (using document: *Document, text: string, max_width: float = -1) -> Vector2, success: bool {
    size, success := compute_text_size(document, text, font_settings.font, font_settings.font_size, max_width);
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
    current_page_info.header_height = height;
    // For debugging:
    // if current_page_info.header_height {
    //     page := get_current_page(document);
    //     pattern := float.[3, 7];
    //     Pdf.Page_SetDash(page, pattern.data, pattern.count, 3);

    //     if current_page_info.header_height {
    //         Pdf.Page_SetRGBStroke(page, 0.9, 0.4, 0.4);
    //         Pdf.Page_Rectangle(page, page_margins[3], page_margins[2] + get_net_page_height(document, page) + current_page_info.footer_height, get_net_page_width(document, page), current_page_info.header_height);
    //         Pdf.Page_Stroke(page);
    //     }

    //     Pdf.Page_SetDash(page, null, 0, 0);
    //     Pdf.Page_SetRGBStroke(page, 0, 0, 0);
    // }
}

set_page_footer_height :: (using document: *Document, height: float) {
    current_page_info.footer_height = height;
    // For debugging:
    // if current_page_info.footer_height {
    //     page := get_current_page(document);
    //     pattern := float.[3, 7];
    //     Pdf.Page_SetDash(page, pattern.data, pattern.count, 3);

    //     if current_page_info.footer_height {
    //         Pdf.Page_SetRGBStroke(page, 0.9, 0.4, 0.4);
    //         Pdf.Page_Rectangle(page, page_margins[3], page_margins[2], get_net_page_width(document, page), current_page_info.footer_height);
    //         Pdf.Page_Stroke(page);
    //     }

    //     Pdf.Page_SetDash(page, null, 0, 0);
    //     Pdf.Page_SetRGBStroke(page, 0, 0, 0);
    // }
}

set_position :: (using document: *Document, x: float, y: float) {
    position.x = x + page_margins[3];
    position.y = y + page_margins[2] + current_page_info.footer_height;
}

set_position :: (using document: *Document, new_position: Vector2) {
    position.x = new_position.x + page_margins[3];
    position.y = new_position.y + page_margins[2] + current_page_info.footer_height;
}

get_position :: (using document: *Document) -> Vector2 {
    return .{position.x - page_margins[3], position.y - page_margins[2] - current_page_info.footer_height};
}

get_line_height :: (using document: *Document) -> float {
    return get_line_height(document, font_settings);
}

get_line_height :: (using document: *Document, settings: Font_Settings) -> float {
    return settings.font_size * line_height_factor;
}

begin_text_line :: (using document: *Document) {
    ascender_int_offset := Pdf.Font_GetAscent(font_settings.font);
    ascender_offset := (ascender_int_offset * font_settings.font_size) / 1000.0;

    position.y -= ascender_offset;
    position.x = page_margins[3] + limits.x;
    // position.y -= get_line_height(document);
}

add_newline :: (using document: *Document) {
    position.y -= get_line_height(document);
    position.x = page_margins[3] + limits.x;
}

can_fit_height_on_current_page :: (using document: *Document, height: float) -> bool {
    if current_area != .BODY return true; // We only do page wrapping in the body. It’s your fault if you mess this up in the header or footer.
    return position.y - height >= page_margins[2] + current_page_info.footer_height;
}

add_text :: (using document: *Document, text: string) -> bool {
    // @Incomplete: Respect document.padding!
    assert(!table, "Adding text while rendering tables is not yet supported. Use add_table_cell() instead.");
    return render_text(document, text, font_settings, alignment, min_x = limits.x, max_width = limits.width);
}

render_text :: (using document: *Document, text: string, settings: Font_Settings, text_alignment: Pdf.TextAlignment, min_x: float, max_width: float) -> bool {
    // log("render_text: \"%\" % %", text, text_font, text_font_size);
    c_text := temp_c_string(text); // @Speed

    page := get_current_page(document);

    haru_min_x := page_margins[3] + min_x;
    // For debugging line widths
    // render_row_border(page, .{1, .{0,1,0}}, haru_min_x, position.y, haru_min_x + max_width, position.y);
    line_height := get_line_height(document, settings);

    Pdf.Page_SetRGBFill(page, settings.color.x, settings.color.y, settings.color.z);
    Pdf.Page_BeginText(page);
    Pdf.Page_SetFontAndSize(page, settings.font, settings.font_size);
    Pdf.Page_SetTextLeading(page, settings.font_size * line_height_factor);
    Pdf.Page_MoveTextPos(page, position.x, position.y);

    needs_lines := settings.underline_width > 0 || settings.strikethrough_width > 0;
    lines: [..] Text_Line;

    offset := 0;
    success := true;
    while offset < text.count {
        if !can_fit_height_on_current_page(document, 0) { // 0 height because text goes up (mostly)
            Pdf.Page_EndText(page);
            draw_text_lines(document, settings, lines);
            array_reset_keeping_memory(*lines);
            page = add_page(document);
            begin_text_line(document);
            position.x = haru_min_x;
            Pdf.Page_BeginText(page);
            Pdf.Page_SetFontAndSize(page, settings.font, settings.font_size);
            Pdf.Page_SetTextLeading(page, settings.font_size * line_height_factor);
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
            remaining_width := max_width - (position.x - haru_min_x);
            line_characters := Pdf.Page_MeasureText(page, c_text + offset, remaining_width, xx word_wrap, *line_width);
            if line_characters == 0 {
                if position.x == haru_min_x {
                    // We’re alredy at the start of the row, so breaking into the next line won't help
                    if word_wrap {
                        line_characters = Pdf.Page_MeasureText(page, c_text + offset, remaining_width, 0, *line_width);
                    }
                    if line_characters == 0 {
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

        if needs_lines array_add(*lines, .{position, line_width});

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

    draw_text_lines(document, settings, lines);
    array_free(lines);

    return success;
}

// For drawing underlines / strikethroughs after rendering the whole text in one block
Text_Line :: struct {
    start: Vector2;
    width: float;
}

draw_text_lines :: (using document: *Document, settings: Font_Settings, lines: [] Text_Line) {
    page := get_current_page(document);
    if lines Pdf.Page_SetLineCap(page, .BUTT_END);
    for lines {
        if settings.underline_width > 0 {
            start_y := it.start.y - settings.underline_width;
            render_line(page, settings.color, settings.underline_width, it.start.x, start_y, it.start.x + it.width, start_y);
        }
        if settings.strikethrough_width > 0 {
            xheight_int_offset := Pdf.Font_GetXHeight(settings.font);
            xheight_offset := (xheight_int_offset * settings.font_size) / 1000.0;
            start_y := it.start.y + xheight_offset / 2;
            render_line(page, settings.color, settings.strikethrough_width, it.start.x, start_y, it.start.x + it.width, start_y);
        }
    }

}

Resize_Mode :: enum {
    STRETCH;
    CONTAIN;
}

compute_containing_dimensions :: (size: Vector2, max_size: Vector2) -> Vector2 {
    w_ratio := size.x / max_size.x;
    h_ratio := size.y / max_size.y;
    ratio := 1.0;
    if w_ratio >= h_ratio {
        ratio = w_ratio;
    } else {
        ratio = h_ratio;
    }

    result := size;
    if ratio > 1 {
        result.x = size.x / ratio;
        result.y = size.y / ratio;
    }

    return result;
}

add_image :: (using document: *Document, image: Pdf.Image, width: float, height: float, resize_mode: Resize_Mode) -> rendered_dimensions: Vector2 {
    page := get_current_page(document);
    rendered_dimensions := Vector2.{width, height};
    if resize_mode == .CONTAIN {
        image_dimensions: Vector2;
        assert(size_of(type_of(image_dimensions)) == size_of(Pdf.Point));
        Pdf.Image_GetSize2(image, xx *image_dimensions);
        rendered_dimensions = compute_containing_dimensions(image_dimensions, .{width, height});
    }

    end_x := page_margins[3] + limits.x + limits.width;

    if !can_fit_height_on_current_page(document, rendered_dimensions.y) {
        page = add_page(document);
    }

    start_x := position.x;
    if alignment == {
        case .LEFT;
        case .CENTER;
            start_x += (end_x - start_x - rendered_dimensions.x) / 2;
        case .RIGHT;
            start_x = end_x - rendered_dimensions.x;
        case;
            assert(false, "Unsupported alignment: %", alignment);
    }

    Pdf.Page_DrawImage(page, image, start_x, position.y - rendered_dimensions.y, rendered_dimensions.x, rendered_dimensions.y);
    position.x = page_margins[3] + limits.x;
    position.y -= rendered_dimensions.y;
    return rendered_dimensions;
}

add_horiziontal_line :: (using document: *Document, color: Vector3) {
    page := get_current_page(document);

    hr_width := 1.0;
    if !can_fit_height_on_current_page(document, padding[0] + hr_width) {
        page = add_page(document);
    }

    start_x := page_margins[3] + padding[3];
    start_y := position.y - padding[0];
    render_row_border(page, .{hr_width, color}, start_x, start_y, start_x + get_net_page_width(document, page) - padding[1] - padding[3], start_y);

    position.x = page_margins[3];
    position.y -= hr_width + padding[0] + padding[2];
}

set_alignment :: (document: *Document, text_alignment: Pdf.TextAlignment) {
    document.alignment = text_alignment;
}

set_padding :: (document: *Document, padding: Vector2) {
    document.padding = .[padding.y, padding.x, padding.y, padding.x];
}

set_padding :: (document: *Document, padding: [4] float) {
    document.padding = padding;
}

// Utilites for adjusting padding arrays:
set_top :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[0] = value;
    return result;
}

set_right :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[1] = value;
    return result;
}

set_bottom :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[2] = value;
    return result;
}

set_left :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[3] = value;
    return result;
}

add_top :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[0] += value;
    return result;
}

add_right :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[1] += value;
    return result;
}

add_bottom :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[2] += value;
    return result;
}

add_left :: (values: [4] float, value: float) -> [4] float {
    result := values;
    result[3] += value;
    return result;
}


begin_footer :: (using document: *Document, page_index: int) {
    assert(page_index >= 0 && page_index < pages.count);
    assert(current_area == .BODY);

    // Save the current position on the page we’re leaving
    current_page_info.position = position;

    current_page      = pages[page_index];
    current_page_info = *page_infos[page_index];

    current_area = .FOOTER;
    position.x = page_margins[3];
    position.y = page_margins[2] + current_page_info.footer_height;
}

end_footer :: (using document: *Document) {
    assert(current_area == .FOOTER);
    current_page      = pages[pages.count - 1];
    current_page_info = *page_infos[page_infos.count - 1];

    current_area = .BODY;
    // Restore the last position
    position = current_page_info.position;
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
        table.columns[it_index].padding = .[it.y, it.x, it.y, it.x];
    }

    document.padding = table.columns[table.current_row.count].padding;
}

set_default_cell_paddings :: (using document: *Document, paddings: .. [4] float) {
    assert(table != null);
    assert(paddings.count == table.columns.count);
    for paddings {
        table.columns[it_index].padding = it;
    }

    document.padding = table.columns[table.current_row.count].padding;
}

set_row_border :: (using document: *Document, size: float, color := Vector3.{0,0,0}, direction := Border_Direction.ALL) {
    assert(table != null);
    border := Table.Border.{size, color};
    if direction & .TOP {
        for * table.columns {
            it.default.borders[0] = border;
        }
    }
    if direction & .LEFT {
        table.columns[table.columns.count - 1].default.borders[1] = border;
    }
    if direction & .BOTTOM {
        for * table.columns {
            it.default.borders[2] = border;
        }
    }
    if direction & .RIGHT {
        table.columns[0].default.borders[3] = border;
    }
}

set_cell_border :: (using document: *Document, size: float, color := Vector3.{0,0,0}, direction := Border_Direction.ALL) {
    assert(table != null);
    style := *table.columns[table.current_row.count].default;
    border := Table.Border.{size, color};
    if direction & .TOP    style.borders[0] = border;
    if direction & .RIGHT  style.borders[1] = border;
    if direction & .BOTTOM style.borders[2] = border;
    if direction & .LEFT   style.borders[3] = border;
}

add_table_row :: (using document: *Document, texts: .. string) {
    assert(table != null);
    assert(texts.count == table.columns.count);
    for texts add_table_cell(document, it);
}

add_table_cell :: (using document: *Document, text: string) {
    add_table_cell(document, Table.Cell_Content.{text = text});
}

add_table_cell :: (using document: *Document, data: Table.Cell_Content) {
    assert(table != null);
    assert(table.columns.count != 0);


    default := table.columns[table.current_row.count].default;

    state: Table.Cell_State;
    state.style.borders = default.borders;
    state.style.alignment = alignment;
    state.style.padding = padding;
    state.font_settings = font_settings;
    state.content = data;
    state.merged_borders = state.style.borders;

    if state.content.colspan < 1 state.content.colspan = 1;
    assert(table.current_row.count + state.content.colspan <= table.columns.count);

    array_add(*table.current_row, state);
    for 1..state.content.colspan-1 {
        array_add(*table.current_row, .{skipped = true});
    }

    if table.current_row.count == table.columns.count {
        finish_table_row(document);
    }

    document.alignment = table.columns[table.current_row.count].alignment;
    document.padding = table.columns[table.current_row.count].padding;
}

begin_table_footer :: (using document: *Document) {
    assert(table != null);
    assert(table.num_footer_rows < 0);
    table.num_footer_rows = 0;
}

end_table :: (using document: *Document) {
    assert(!table.current_row.count);
    if table.last_row {
        render_row(document, table.last_row);
        table.last_row.count = 0;
    }
    free(table);
    table = null;
}

append_to_builder :: (builder: *String_Builder, document: *Document) {
    Callback_Data :: struct {
        ctx: Context;
        builder: *String_Builder;
        document: *Document;
    }

    haru_write_to_string_builder :: (stream: Pdf.Stream, ptr: *u8, size: u32) -> Pdf.STATUS #c_call {
        data := cast(*Callback_Data) stream.attr;
        push_context data.ctx {
            to_write := ptr;
            remaining := size;
            while remaining {
                buffer := ensure_contiguous_space_and_return_available_range(data.builder, 128);
                if !buffer {
                    log_error("Couldn’t get a buffer that’s big enough for %", size);
                    error: u64 = Pdf.HPDF_FAILD_TO_ALLOC_MEM;
                    Pdf.SetError(*data.document.haru_doc.error, error, 0);
                    return error;
                }

                amount := Min(remaining, cast(u32) buffer.count);
                memcpy(buffer.data, to_write, amount);
                advance_through_ensured_space(data.builder, amount);
                to_write += amount;
                remaining -= amount;
            }
            return Pdf.HPDF_OK;
        }
    }

    data: Callback_Data;
    data.ctx = context;
    data.builder = builder;
    data.document = document;
    callback_writer := Pdf.CallbackWriter_New(document.haru_doc.mmgr, haru_write_to_string_builder, *data);
    defer Pdf.Stream_Free(callback_writer);


    old_stream := document.haru_doc.stream;
    document.haru_doc.stream = callback_writer;
    defer document.haru_doc.stream = old_stream;

    result := Pdf.SaveToStream(document.haru_doc);
    if result != Pdf.HPDF_OK {
        document.pdf_context.error = result;
    }
}

exit_if_error :: (using pdf_context: Pdf_Context) {
    if !check_for_error(pdf_context) exit(1);
}

exit_if_error :: (pdf: Pdf.Doc, loc := #caller_location) {
    if !check_for_error(pdf, loc) exit(1);
}

check_for_error :: (using pdf_context: Pdf_Context) -> success: bool {
    if error != Pdf.HPDF_OK {
        // log_error("Error at % while generating the PDF: 0x% (%)", error_location, formatInt(error, base = 16), error_detail);
        log_error("Error while generating the PDF: 0x% (%)", formatInt(error, base = 16), error_detail);
        return false;
    }

    return true;
}

check_for_error :: (pdf: Pdf.Doc, loc := #caller_location) -> bool {
    error := Pdf.GetError(pdf);
    if error != Pdf.HPDF_OK {
        log_error("Error at % while generating the PDF: 0x% (%)", loc, formatInt(error, base = 16), Pdf.GetErrorDetail(pdf));
        return false;
    }
    return true;
}


#scope_file

finish_table_row :: (using document: *Document) {
    table.num_rows += 1;
    if table.num_footer_rows >= 0 table.num_footer_rows += 1;

    y_after_last_row := position.y;
    if table.last_row  y_after_last_row -= table.last_row[0].height;
    compute_height(document, table.current_row);

    current_row_fits := (y_after_last_row - table.current_row[0].height >= page_margins[2] + current_page_info.footer_height);

    // Pull the last row onto next page if the first footer row does not fit on the new page so that
    // the footer is never alone on its own page.
    render_last_row_on_next_page := table.last_row && !current_row_fits && table.num_footer_rows == 1;

    if table.last_row {
        if current_row_fits merge_borders(*table.last_row, *table.current_row);
        if render_last_row_on_next_page {
            // We need to re-render the row-before-last_row’s bottom border
            // if it was removed by merge_border because we thought that last_row
            // will be rendered after it.
            needs_redraw := false;
            for * table.second_to_last_row {
                if it.merged_borders[2].size != it.style.borders[2].size {
                    it.merged_borders[2] = it.style.borders[2];
                    needs_redraw = true;
                }
            }
            if needs_redraw  render_row(document, table.second_to_last_row, only_bottom_border = true);
        } else {
            render_row(document, table.last_row);
        }
    }

    if !current_row_fits {
        add_page(document);
        row_below_header := ifx render_last_row_on_next_page then *table.last_row else *table.current_row;
        if table.header {
            table.header[0].row_start = position;
            merge_borders(*table.header, row_below_header);
            render_row(document, table.header);
        }
        if render_last_row_on_next_page {
            table.last_row[0].row_start = position;
            render_row(document, table.last_row);
        }
    }

    table.current_row[0].row_start = position;

    // @Incomplete: What do we do if a row doesn’t fit on the page on its own!?
    assert(position.y - table.current_row[0].height >= page_margins[2] + current_page_info.footer_height);

    if !table.header {
        array_copy(*table.header, table.current_row);
    }


    old := table.second_to_last_row;
    table.second_to_last_row = table.last_row;
    table.last_row = table.current_row;
    table.current_row = old;
    array_reset_keeping_memory(*table.current_row);
}

compute_height :: (using document: *Document, row: [] Table.Cell_State) {
    assert(table != null);
    assert(row.count == table.columns.count);

    net_width := get_net_page_width(document);

    min_x: float;
    max_height: float;

    for * col: row {
        if col.skipped continue;

        col.width = 0;
        for i: 0..col.content.colspan-1 {
            col.width += net_width * table.columns[it_index + i].width;
        }

        content_width := col.width - col.style.padding[1] - col.style.padding[3];

        text_size := compute_text_size(document, col.content.text, col.font_settings.font, col.font_settings.font_size, content_width);
        col_height := text_size.y + col.style.padding[0] + col.style.padding[2];
        max_height = Max(max_height, col_height);
    }

    for * col: row {
        col.height = max_height;
    }
}


render_row :: (using document: *Document, row: [] Table.Cell_State, only_bottom_border := false) {
    assert(table != null);
    assert(row.count == table.columns.count);

    net_width := get_net_page_width(document);

    min_x: float;
    row_start := row[0].row_start;
    min_y: float;

    for * col: row {
        if col.skipped continue;

        content_width := col.width - col.style.padding[1] - col.style.padding[3];

        descender_int_offset := Pdf.Font_GetDescent(col.font_settings.font);
        descender_offset := (descender_int_offset * col.font_settings.font_size) / 1000.0;
        ascender_int_offset := Pdf.Font_GetAscent(col.font_settings.font);
        ascender_offset := (ascender_int_offset * col.font_settings.font_size) / 1000.0;

        line_height := get_line_height(document, col.font_settings);
        font_padding := line_height + descender_offset - ascender_offset;

        cell_start_x := min_x;
        content_start_x := cell_start_x + col.style.padding[3];
        text_baseline_start_y := row_start.y - col.style.padding[0] - (ascender_offset + font_padding / 2);

        haru_cell_start_x := page_margins[3] + cell_start_x;
        haru_content_start_x := page_margins[3] + content_start_x;

        // Render borders
        page := get_current_page(document);
        borders := col.merged_borders;
        if !only_bottom_border {
            if borders[0].size > 0 {
                render_row_border(page, borders[0], haru_cell_start_x, row_start.y, haru_cell_start_x + col.width, row_start.y);
            }
            if borders[1].size > 0 {
                render_row_border(page, borders[1], haru_cell_start_x + col.width, row_start.y, haru_cell_start_x + col.width, row_start.y - col.height);
            }
        }

        if borders[2].size > 0 {
            render_row_border(page, borders[2], haru_cell_start_x + col.width, row_start.y - col.height, haru_cell_start_x, row_start.y - col.height);
        }

        if !only_bottom_border {
            if borders[3].size > 0 {
                render_row_border(page, borders[3], haru_cell_start_x, row_start.y - col.height, haru_cell_start_x, row_start.y);
            }
        }

        if !only_bottom_border {
            position.x = haru_content_start_x;
            position.y = text_baseline_start_y;

            render_text(document, col.content.text, col.font_settings, col.style.alignment, min_x = content_start_x, max_width = content_width);
        }
        min_x += col.width;

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
    }

    if !only_bottom_border {
        position.y = row_start.y - row[0].height;
    }
}

render_row_border :: (page: Pdf.Page, border: Table.Border, start_x: float, start_y: float, end_x: float, end_y: float) {
    Pdf.Page_SetLineCap(page, .PROJECTING_SQUARE_END);
    render_line(page, border.color, border.size, start_x, start_y, end_x, end_y);
}

render_line :: (page: Pdf.Page, color: Vector3, size: float, start_x: float, start_y: float, end_x: float, end_y: float) {
    Pdf.Page_SetRGBStroke(page, color.x, color.y, color.z);
    Pdf.Page_SetLineWidth(page, size);
    Pdf.Page_MoveTo(page, start_x, start_y);
    Pdf.Page_LineTo(page, end_x, end_y);
    Pdf.Page_Stroke(page);
}


merge_borders :: (upper: *[] Table.Cell_State, lower: *[] Table.Cell_State) {
    assert(upper.count == lower.count);
    for i: 0..upper.count-1 {
        if (<<upper)[i].style.borders[2].size > (<<lower)[i].style.borders[0].size {
            (<<lower)[i].merged_borders[0].size = 0;
        } else {
            (<<upper)[i].merged_borders[2].size = 0;
        }
    }
}


Pdf_Context :: struct {
    error: Pdf.STATUS = Pdf.HPDF_OK;
    error_detail: Pdf.STATUS;
    // error_location: Source_Code_Location;

    // last_location: Source_Code_Location;
}

pdf_error_handler :: (error: Pdf.STATUS, detail: Pdf.STATUS, user_data: *void) -> void #c_call {
    data := cast(*Pdf_Context) user_data;
    if data.error != Pdf.HPDF_OK {
        ctx: Context;
        push_context ctx {
            Debug.breakpoint();
        }
        data.error = error;
        data.error_detail = detail;
        // data.error_location = data.last_location;
    }
}

#import "Basic";
#import "Math";
#import "String";
Debug :: #import "Debug";

