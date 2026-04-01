# Examples Directory

This directory contains Jupyter notebooks contributed by students as part of the aBCI course.

## Adding Your Example

1. Create a new `.ipynb` file in this directory
2. Use a descriptive filename (e.g., `signal_processing_basics.ipynb`)
3. Follow the template structure shown in `example_numpy_intro.ipynb`
4. Ensure all cells run without errors
5. **Add a card to `index.qmd`** (see below)
6. Build the documentation locally with `quarto preview`
7. Submit a pull request

## Adding Your Card to index.qmd

After creating your notebook, add a card to the "Available Notebooks" section in `index.qmd`:

```markdown
::: {.g-col-12 .g-col-md-6}
::: {.card}
![Short description](_assets/your_thumbnail.png){.card-img-top}

::: {.card-body}
### [Your Notebook Title](your_notebook_filename.ipynb)

Brief description of what your notebook teaches (1-2 sentences).

**Topics**: Topic1, Topic2, Topic3

**Author**: Your Name
:::
:::
:::
```

### Adding a Thumbnail

Create a thumbnail image for your notebook:

**Option 1: Local PNG file (recommended)**
1. Create a PNG image (600x400px recommended)
2. Save it in `docs/examples/_assets/`
3. Name it descriptively (e.g., `signal_processing_thumb.png`)
4. Reference it: `![Description](_assets/signal_processing_thumb.png){.card-img-top}`

**Option 2: Remote URL**
```markdown
![Description](https://example.com/image.png){.card-img-top}
```

**Option 3: SVG file**
```markdown
![Description](_assets/your_image.svg){.card-img-top}
```

**Tips for thumbnails:**
- Use plots or visualizations from your notebook
- Keep images simple and clear
- Recommended size: 600x400px
- Use PNG or SVG format
- Ensure good contrast for readability

### Card Layout

The cards use a responsive grid layout:
- On desktop: 2 cards per row
- On tablet/mobile: 1 card per row (full width)

## Notebook Template Structure

Your notebook should include:

1. **Title cell (Markdown)**: Title, description, author, date
2. **Introduction (Markdown)**: What will be covered and why it matters
3. **Setup (Code)**: Import necessary libraries
4. **Main content**: Alternate between explanations (Markdown) and code (Code cells)
5. **Conclusion (Markdown)**: Summary and key takeaways

## Tips

- Use descriptive cell outputs (print statements, plots)
- Add inline comments for complex code
- Keep examples focused on one topic
- Test with `quarto preview` before submitting
- Make sure your card description is clear and inviting!
