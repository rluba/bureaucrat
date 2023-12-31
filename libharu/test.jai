
main :: () {
	pdf_context: Pdf_Context;
	pdf := Pdf.New(pdf_error_handler, *pdf_context);
    if (!pdf) {
        log_error("Error: Cannot create PDF object.");
        exit(1);
    }
	defer Pdf.Free(pdf);

	Pdf.UseUTFEncodings(pdf);

	page := Pdf.AddPage(pdf);
	Pdf.Page_SetSize(page, .A4, .LANDSCAPE);

	font := Pdf.GetFont(pdf, "Helvetica", null);
    Pdf.Page_SetFontAndSize(page, font, 14);

    line_width: float;
    line_characters := Pdf.Page_MeasureText(page, "verylongwordthatcanotbefitintothewidthwegaveyou", 10, Pdf.HPDF_TRUE, *line_width);
    log("We could fit % characters with a real width of % (% %)", line_characters, line_width, Pdf.GetError(pdf), Pdf.GetErrorDetail(pdf));

    Pdf.Page_BeginText(page);
    Pdf.Page_SetTextLeading(page, 20);
    Pdf.Page_TextOut(page, Pdf.Page_GetWidth(page) / 2, Pdf.Page_GetHeight(page) / 2, "Hello\nNewline!");
    Pdf.Page_ShowText(page, "Hello again\nNewline!");
    Pdf.Page_ShowTextNextLine(page, "Hello next line\nNewline!");
    Pdf.Page_EndText(page);

    // // Define cell dimensions and padding
    // float cell_width = 200;
    // float cell_height = 30;
    // float padding = 5;

    // // Table position
    // float x = 50;
    // float y = HPDF_Page_GetHeight(page) - 50;

    // // Sample table data
    // const char *table_data[][2] = {
    //     {"Header 1", "Header 2"},
    //     {"Row 1, Column 1", "This is a long text that will wrap within the cell."},
    //     {"Row 2, Column 1", "Short text."},
    // };

    // // Loop to create and populate table cells
    // for (int row = 0; row < 3; row++) {
    //     for (int col = 0; col < 2; col++) {
    //         HPDF_Page_BeginText(page);
    //         HPDF_Page_SetFontAndSize(page, font, 10);
    //         HPDF_Page_TextRect(page, x + col * cell_width, y - row * cell_height, x + (col + 1) * cell_width - padding,
    //                            y - (row + 1) * cell_height + padding, table_data[row][col], HPDF_TALIGN_LEFT, NULL);
    //         HPDF_Page_EndText(page);
    //     }
    // }

    // Save the PDF
    Pdf.SaveToFile(pdf, "test.pdf");
	exit_if_error(pdf_context);
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

exit_if_error :: (using pdf_context: Pdf_Context) {
	if error != Pdf.HPDF_OK {
		// log_error("Error at % while generating the PDF: 0x% (%)", error_location, formatInt(error, base = 16), error_detail);
		log_error("Error while generating the PDF: 0x% (%)", formatInt(error, base = 16), error_detail);
		exit(1);
	}
}

exit_if_error :: (pdf: Pdf.Doc, loc := #caller_location) {
	error := Pdf.GetError(pdf);
	if error != Pdf.HPDF_OK {
		log_error("Error at % while generating the PDF: 0x% (%)", loc, formatInt(error, base = 16), Pdf.GetErrorDetail(pdf));
		exit(1);
	}
}

Pdf :: #import,file "unix.jai";

#import "Basic";
