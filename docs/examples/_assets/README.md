# Assets Directory

This directory contains thumbnail images for the example notebook cards.

## Adding a Thumbnail for Your Notebook

### Option 1: Save from Your Notebook (Recommended)

Add this to the end of your notebook to save a thumbnail:

```python
import matplotlib.pyplot as plt

# Assuming you have a figure already created
fig, ax = plt.subplots(figsize=(6, 4))
# ... your plotting code ...

# Save the thumbnail
fig.savefig('../_assets/my_notebook_thumb.png', dpi=150, bbox_inches='tight')
```

### Option 2: Create Manually

1. Create an image (600x400px recommended)
2. Save as PNG in this directory
3. Name it descriptively: `topic_name_thumb.png`

### Option 3: Use an Existing Plot

Take a screenshot of a key visualization from your notebook and save it here.

### Option 4: Use a Remote URL

You can also use images hosted elsewhere by providing the full URL in your card.

## Guidelines

- **Size**: 600x400px is ideal, but any reasonable aspect ratio works
- **Format**: PNG is recommended (also supports JPG, SVG)
- **File size**: Keep under 500KB for fast loading
- **Content**: Use a representative plot or visualization from your notebook
- **Naming**: Use descriptive names like `signal_processing_thumb.png`

## Example Thumbnails

- `numpy_intro_thumb.png` - Simple line plot for NumPy tutorial
- `numpy_intro_thumb.svg` - Vector version (also available)

## Tools for Creating Thumbnails

- **From Python**: matplotlib's `savefig()`, plotly's `write_image()`
- **From Jupyter**: Screenshot tool, cell output right-click → "Save Image As"
- **Image editors**: GIMP, Photoshop, Figma, Canva
- **Online tools**: Various free thumbnail generators

## No Thumbnail?

Cards work fine without thumbnails too! Simply omit the image line in your card definition.
