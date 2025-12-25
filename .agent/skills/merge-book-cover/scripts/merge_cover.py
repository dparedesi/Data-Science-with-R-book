#!/usr/bin/env python3
"""
Merge Cover Script
==================

Merges a cover image into a PDF book while preserving aspect ratio and matching width.

Usage:
    python3 merge_cover.py

Requirements:
    - img2pdf
    - pikepdf
    - Pillow
"""

import os
import sys

try:
    import img2pdf
    from pikepdf import Pdf
    from PIL import Image
except ImportError as e:
    print(f"Error: Missing required package. {e}")
    sys.exit(1)

# Settings
COVER_IMG_PATH = "assets/cover.png"
COVER_PDF_PATH = "cover_temp.pdf"
BOOK_PDF_PATH = "docs/Data-Science-with-R.pdf"
OUTPUT_PDF_PATH = "docs/Data-Science-with-R_FINAL.pdf"

def match_width_layout(img_width, img_height, dpi):
    """
    Calculates PDF page dimensions to match book width while preserving image ratio.
    Returns: (page_width, page_height, img_width, img_height)
    """
    # Global 'book_width' must be set before calling this, or passed in.
    # For simplicity in this script, we'll access the global scope or 
    # better yet, we can use a closure/partial, but per "no over-engineering",
    # we will keep it simple.
    
    # However, img2pdf callback doesn't support extra args easily.
    # We will rely on the variable defined in the scope.
    scale = BOOK_WIDTH / img_width
    new_height = img_height * scale
    return (BOOK_WIDTH, new_height, BOOK_WIDTH, new_height)

def main():
    global BOOK_WIDTH
    
    print(f"Reading dimensions from {BOOK_PDF_PATH}...")
    
    if not os.path.exists(BOOK_PDF_PATH):
        print(f"Error: Book PDF not found at {BOOK_PDF_PATH}")
        sys.exit(1)
        
    if not os.path.exists(COVER_IMG_PATH):
        print(f"Error: Cover image not found at {COVER_IMG_PATH}")
        sys.exit(1)

    try:
        # 1. Get Book Width
        with Pdf.open(BOOK_PDF_PATH) as book:
            book_mediabox = book.pages[0].mediabox
            BOOK_WIDTH = float(book_mediabox[2] - book_mediabox[0])
            print(f"Book Page Width: {BOOK_WIDTH} pts")

        # 2. Convert to PDF
        print(f"Processing cover image: {COVER_IMG_PATH}")
        print("Converting cover to PDF (Matching width, preserving ratio)...")
        
        with open(COVER_PDF_PATH, "wb") as f:
            f.write(img2pdf.convert(COVER_IMG_PATH, layout_fun=match_width_layout))

        # 3. Merge
        print(f"Merging with {BOOK_PDF_PATH}...")
        pdf = Pdf.new()
        
        with Pdf.open(COVER_PDF_PATH) as cover:
            pdf.pages.extend(cover.pages)

        with Pdf.open(BOOK_PDF_PATH) as book:
            pdf.pages.extend(book.pages)

        pdf.save(OUTPUT_PDF_PATH)
        print(f"Success! Output saved to: {OUTPUT_PDF_PATH}")

    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        sys.exit(1)
    finally:
        # Cleanup
        if os.path.exists(COVER_PDF_PATH):
            os.remove(COVER_PDF_PATH)

if __name__ == "__main__":
    main()
