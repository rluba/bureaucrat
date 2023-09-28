main :: () {
    base_path := path_strip_filename(get_path_of_running_executable());
    output_filename := "example.pdf";
    output_path := tprint("%0%\0", base_path, output_filename);

    page_size := Pdf.PageSizes.A4;

    pdf: Document;
    success := init(*pdf, page_size, .PORTRAIT, .[20, 40, 35, 30]);
    if !success exit(1);

    logo_path := join(base_path, "cc.logo.large.png");
    logo_data := read_entire_file(logo_path);
    if !logo_data {
        error_value, error_string := get_error_value_and_string();
        log_error("Could not load logo file: % %", error_value, error_string);
        exit(1);
    }

    logo := Pdf.LoadPngImageFromMem(pdf.haru_doc, logo_data.data, xx logo_data.count);
    if !logo {
        error := Pdf.GetError(pdf.haru_doc);
        error_detail := Pdf.GetErrorDetail(pdf.haru_doc);
        error_string := get_error_string(xx error_detail);
        log_error("Could not load image: % % %", error, error_detail, error_string);
        exit(1);
    }

    font_folder := join(base_path, "Open_Sans/static");

    load_font_or_exit :: (document: *Document, filename: string) -> *u8 #expand {
        result := Pdf.LoadTTFontFromFile(document.haru_doc, tprint("%/%\0", font_folder, filename).data, xx true);
        if !result {
            error := Pdf.GetError(document.haru_doc);
            error_detail := Pdf.GetErrorDetail(document.haru_doc);
            error_string := get_error_string(xx error_detail);
            log_error("Could not load font \"%\": % % %", filename, error, error_detail, error_string);
            exit(1);
        }
        return result;
    }

    open_sans_regular  := load_font_or_exit(*pdf, "OpenSans-Regular.ttf");
    open_sans_semibold := load_font_or_exit(*pdf, "OpenSans-SemiBold.ttf");

    title_font := Pdf.GetFont(pdf.haru_doc, open_sans_semibold, "UTF-8");
    text_font := Pdf.GetFont(pdf.haru_doc, open_sans_regular, "UTF-8");
    bold_text_font := title_font;
    table_header_font := bold_text_font;
    title_font_size := 26.0;
    text_font_size := 14.0;

    set_font(*pdf, text_font, text_font_size);
    footer_size := compute_text_size(*pdf, "Page 000 / 000");
    set_page_footer_height(*pdf, footer_size.y + 10);

    page_dimensions := get_net_page_dimensions(*pdf);
    log("Page dimensions: %", page_dimensions);

    light_border_color := Vector3.{0.89, 0.91, 0.94};

    logo_width := 100.0;
    logo_height := 50.0;
    logo_padding := 5;

    set_alignment(*pdf, .RIGHT);
    rendered_logo_dimensions := add_image(*pdf, logo, logo_width, logo_height, .CONTAIN);

    set_alignment(*pdf, .LEFT);
    set_position(*pdf, 0, page_dimensions.y);
    set_font(*pdf, title_font, title_font_size);
    begin_text_line(*pdf);
    add_text(*pdf, "Invoice", max_width = page_dimensions.x - rendered_logo_dimensions.x - logo_padding);

    current_position := get_position(*pdf);
    after_logo_and_title := Min(current_position.y, page_dimensions.y - (rendered_logo_dimensions.y + logo_padding));
    set_position(*pdf, 0, after_logo_and_title);

    set_padding(*pdf, .{0, 10});
    add_horiziontal_line(*pdf, light_border_color);
    set_padding(*pdf, .{0, 0});

    formatted_address := "Devon Britton\nScrambled 262";
    vat_percent := 20;

    set_font(*pdf, bold_text_font, text_font_size);
    begin_text_line(*pdf);
    add_text(*pdf, "To\n");
    set_font(*pdf, text_font, text_font_size);
    add_text(*pdf, formatted_address);
    add_text(*pdf, "\n");
    set_alignment(*pdf, .RIGHT);
    add_text(*pdf, tprint("Date: %\nDue on: %\nInvoice #: %\n", "25.09.2023", "25.09.2023", "MW2018/1706"));
    set_alignment(*pdf, .LEFT);

    begin_table(*pdf, -1, 0.15, 0.20);
    set_default_cell_alignments(*pdf, .LEFT, .RIGHT, .RIGHT);
    set_font(*pdf, table_header_font, text_font_size);
    set_row_border(*pdf, 0);
    set_row_border(*pdf, 2, light_border_color, .BOTTOM);
    set_default_cell_paddings(*pdf, .{5, 10}, .{5, 10}, .{5, 10});
    add_table_cell(*pdf, "Description");
    add_table_cell(*pdf, "VAT");
    add_table_cell(*pdf, "Amount");

    // Body
    set_default_cell_paddings(*pdf, .{5, 7}, .{5, 7}, .{5, 7});
    set_font(*pdf, text_font, text_font_size);
    set_row_border(*pdf, 0);
    set_row_border(*pdf, 1, light_border_color, .BOTTOM);
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i", "20 %", "€ 66,67"); // Just to see that cell wrapping properly respects the cell padding.
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");

    begin_table_footer(*pdf);
    set_row_border(*pdf, 1, .{0, 0, 0}, .TOP);
    set_cell_border(*pdf, 0, .{0, 0, 0}, .BOTTOM);
    set_alignment(*pdf, .RIGHT);
    add_table_cell(*pdf, .{colspan = 2, text = "Subtotal excluding VAT"});
    add_table_cell(*pdf, "€ 1.935,00");
    set_row_border(*pdf, 0, direction = .TOP);

    set_alignment(*pdf, .RIGHT);
    add_table_cell(*pdf, .{colspan = 2, text = tprint("+ VAT % %%", vat_percent)});
    set_cell_border(*pdf, 1, .{0, 0, 0}, .BOTTOM);
    add_table_cell(*pdf, "€ 387,00");

    set_font(*pdf, bold_text_font, text_font_size);
    set_alignment(*pdf, .RIGHT);
    set_row_border(*pdf, 0, .{0, 0, 0}, .BOTTOM);
    add_table_cell(*pdf, .{colspan = 2, text = "Total"});
    add_table_cell(*pdf, "€ 2.322,00");

    end_table(*pdf);

    for i: 0..pdf.pages.count-1 {
        begin_footer(*pdf, i);
        line_height := get_line_height(*pdf);
        set_font(*pdf, text_font, text_font_size);
        set_alignment(*pdf, .RIGHT);
        begin_text_line(*pdf);
        add_text(*pdf, tprint("Page % of %", i + 1, pdf.pages.count));
        end_footer(*pdf);
    }

    // Save the PDF
    Pdf.SaveToFile(pdf.haru_doc, output_path.data);
	check_for_error(pdf.pdf_context);
    log("Created %", output_path);
}

#import,file "../module.jai";

#import "Basic";
#import "Math";
#import "File";
#import "String";
#import "System";

libpng :: #system_library "libpng";

