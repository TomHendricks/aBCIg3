#!/bin/bash
# Convert SVG to PNG using available tools

if command -v convert &> /dev/null; then
    # Using ImageMagick
    convert -background white -density 150 numpy_intro_thumb.svg numpy_intro_thumb.png
    echo "✅ Converted to PNG using ImageMagick"
elif command -v rsvg-convert &> /dev/null; then
    # Using rsvg-convert
    rsvg-convert -w 600 -h 400 numpy_intro_thumb.svg -o numpy_intro_thumb.png
    echo "✅ Converted to PNG using rsvg-convert"
elif command -v inkscape &> /dev/null; then
    # Using Inkscape
    inkscape --export-type=png --export-filename=numpy_intro_thumb.png numpy_intro_thumb.svg
    echo "✅ Converted to PNG using Inkscape"
else
    echo "⚠️  No conversion tool found. SVG will be used instead."
    echo "Install ImageMagick, librsvg, or Inkscape to create PNG."
fi
