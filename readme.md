# Bureaucrat

A very minimal Jai module for creating PDFs that include text, images, and tables.
It was designed to quickly generate invoice-like documents and its very limited feature set is geared towards just that.

It has an imperative API so you don’t have to pre-assemble your full table in advance.

* All items automatically wrap to the next page, if necessary.
* Tables repeat their header on the next page.
* If the table footer would be rendered alone on a new page, it pulls the previous row down with it.
* Table rows merge their borders, if they have conflicting definitions.
* You can render all page footers at the end, when you know the total page count.

This library is pretty new. What it is missing in features it probably makes up for with plenty of bugs. There be dragons.

## libharu

The module contains bindings for [`libharu`](https://github.com/libharu/libharu), a low-level PDF encoding library.

It requires `libpng` for the png-related functions. (If you don’t want that, you can use `generate.jai` rebuild the library without installing `libpng` & regenerate the bindings.)

