// @ToDo:
// * Proper cell computation
// * Use a TTF
// * Footer stuff

main :: () {
    output_filename := "example.pdf";
    // Customer settings
    page_size := Pdf.PageSizes.A4;

    pdf: Document;
    // success := init(*pdf, page_size, .PORTRAIT, .[300, 40, 355, 30]);
    success := init(*pdf, page_size, .PORTRAIT, .[20, 40, 15, 30]);
    if !success exit(1);

    page_dimensions := get_net_page_dimensions(*pdf);
    log("Page dimensions: %", page_dimensions);

    // Stubs
    logo_width := 150.0;
    logo_height := 50.0;
    logo_padding := 5;
    title_font := Pdf.GetFont(pdf.haru_doc, "Helvetica", null);
    subtitle_font := title_font;
    text_font := title_font;
    bold_text_font := title_font;
    table_header_font := title_font;
    title_font_size := 21.0;
    text_font_size := 14.0;

    set_font(*pdf, text_font, text_font_size);
    footer_size := compute_text_size(*pdf, "Page 1 / 000");
    // log("Footer size: %", footer_size);
    // log("Newlined footer size: %", compute_text_size(*pdf, "Page\n1 / 000"));
    set_page_footer_height(*pdf, footer_size.y);

    light_border_color := Vector3.{0.7, 0.7, 0.7};
    dark_border_color  := Vector3.{0.0, 0.0, 0.0};

    logo: string; // @ToDo
    rich_text_header := "<div><b>Strong words<b> from our leader</div>";
    rich_text_footer := "<div>Pay us! Or else…</div>";
    formatted_address := "Devon Britton\nScrambled 262";
    vat_percent := 20;


    add_image(*pdf, logo, logo_width, logo_height);
    set_position(*pdf, 0, page_dimensions.y - get_line_height(*pdf));
    set_font(*pdf, title_font, title_font_size);
    add_text(*pdf, "Invoice\n", max_width = page_dimensions.x - logo_width - logo_padding);
    // add_text(*pdf, "Below the title", max_width = page_dimensions.x - logo_width - logo_padding);
    // add_text(*pdf, "Appended below the title and wrapping almost certainly. Must be the case, right?", max_width = page_dimensions.x - logo_width - logo_padding);
    // add_text(*pdf, "\nBelow the titleAppended below the title\nand wrapping almost certainly. Must be\nthe case, right?", max_width = page_dimensions.x - logo_width - logo_padding);

    current_position := get_position(*pdf);
    after_logo_and_title := Min(current_position.y, page_dimensions.y - (logo_height + logo_padding));
    set_position(*pdf, 0, after_logo_and_title - get_line_height(*pdf));
    add_rich_text(*pdf, rich_text_header);
    add_hr(*pdf);

    set_font(*pdf, subtitle_font, text_font_size);
    add_text(*pdf, "To\n");
    add_text(*pdf, formatted_address);
    add_text(*pdf, "\n");
    set_text_alignment(*pdf, .RIGHT);
    add_text(*pdf, tprint("Date: %\nDue on: %\nInvoice #: %\n", "25.09.2023", "25.09.2023", "MW2018/1706"));
    set_text_alignment(*pdf, .LEFT);

    begin_table(*pdf, -1, 0.15, 0.20);
    set_default_cell_alignments(*pdf, .LEFT, .RIGHT, .RIGHT);
    set_font(*pdf, table_header_font, text_font_size);
    set_row_border(*pdf, 0);
    set_row_border(*pdf, 4, light_border_color, .BOTTOM);
    set_default_cell_paddings(*pdf, .{5, 10}, .{5, 10}, .{5, 10});
    add_table_cell(*pdf, "Description");
    add_table_cell(*pdf, "VAT");
    add_table_cell(*pdf, "Amount");

    // Body
    set_default_cell_paddings(*pdf, .{5, 7}, .{5, 7}, .{5, 7});
    set_font(*pdf, text_font, text_font_size);
    set_row_border(*pdf, 0);
    set_row_border(*pdf, 1, .{0, 0, 0}, .TOP);
    set_row_border(*pdf, 1, light_border_color, .BOTTOM);
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,\n83");
    add_table_row(*pdf, "i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i", "20 %", "€ 66,67");
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
    add_table_row(*pdf, "Pure Laser:\n01.04.2022 - 30.04.2022", "20 %", "€ 40,83");
    add_table_row(*pdf, "All inclusive:\n16.04.2022 - 15.05.2022", "20 %", "€ 66,67");

    begin_table_footer(*pdf);
    set_row_border(*pdf, 1, .{0, 0, 0}, .TOP);
    set_cell_border(*pdf, 0, .{0, 0, 0}, .BOTTOM);
    set_text_alignment(*pdf, .RIGHT);
    add_table_cell(*pdf, .{colspan = 2, text = "Subtotal excluding VAT"});
    add_table_cell(*pdf, "€ 1.935,00");
    set_row_border(*pdf, 0, direction = .TOP);

    set_text_alignment(*pdf, .RIGHT);
    add_table_cell(*pdf, .{colspan = 2, text = tprint("+ VAT % %%", vat_percent)});
    set_cell_border(*pdf, 1, .{0, 0, 0}, .BOTTOM);
    add_table_cell(*pdf, "€ 387,00");

    set_font(*pdf, bold_text_font, text_font_size);
    set_text_alignment(*pdf, .RIGHT);
    set_row_border(*pdf, 0, .{0, 0, 0}, .BOTTOM);
    add_table_cell(*pdf, .{colspan = 2, text = "Total"});
    add_table_cell(*pdf, "€ 2.322,00");

    end_table(*pdf);

    add_rich_text(*pdf, rich_text_footer);

    for i: 0..pdf.pages.count-1 {
        begin_footer(*pdf, i);
        add_text(*pdf, tprint("Page % of %", i + 1, pdf.pages.count));
        end_footer(*pdf);
    }

    // Save the PDF
    Pdf.SaveToFile(pdf.haru_doc, to_c_string(output_filename));
	check_for_error(pdf.pdf_context);
    log("Created %", output_filename);
}

#import,file "module.jai";

#import "Basic";
#import "Math";
