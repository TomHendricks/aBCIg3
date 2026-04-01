#!/bin/bash
# Creates a placeholder thumbnail using ImageMagick (if available)
# Otherwise, provides instructions for manual creation

output_file="numpy_intro_thumb.png"

if command -v convert &> /dev/null; then
    # ImageMagick is available
    convert -size 600x400 xc:lightblue \
        -gravity center \
        -pointsize 48 \
        -fill white \
        -draw "text 0,-50 'NumPy'" \
        -pointsize 24 \
        -draw "text 0,0 'Array Operations'" \
        -draw "text 0,30 'Tutorial'" \
        "$output_file"
    echo "✅ Created: $output_file"
else
    echo "⚠️  ImageMagick not found."
    echo "Please create a thumbnail manually or use a remote URL."
fi
