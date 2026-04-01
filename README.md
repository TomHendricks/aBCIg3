# aBCI OpenSource Contribution Example

This repository serves as a teaching example for university students learning how to contribute to open-source software projects. It demonstrates best practices for creating pull requests, writing documentation, and collaborating on GitHub.

## Purpose

This is a hands-on learning repository for the Donders aBCI course. Students will practice:

- Forking and cloning repositories
- Creating feature branches
- Writing documentation using Jupyter notebooks
- Building and previewing documentation with Quarto
- Submitting pull requests
- Collaborating through code reviews

## Your Task

**Create a documentation example by submitting a pull request:**

1. **Fork this repository** to your GitHub account
2. **Clone your fork** locally
3. **Create a new branch** for your contribution
4. **Add an IPython notebook** (`*.ipynb`) under `./docs/examples/` 
   - Your notebook should demonstrate a concept, analysis, or tutorial
   - Use markdown cells to explain your work
   - Include code cells with clear examples
5. **Build the documentation locally** to preview your changes
6. **Submit a pull request** to the original repository

## Setup Instructions

### 1. Fork and Clone

```bash
# Fork this repository on GitHub, then:
git clone git@github.com:YOUR_USERNAME/aBCI-OSS-example.git
cd aBCI-OSS-example
```

### 2. Install Dependencies

```bash
# Create virtual environment
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install the package in editable mode with documentation dependencies
pip install -e ".[docs]"
```

### 3. Install Quarto

Quarto is needed to build and preview the documentation.

#### Windows
Download and install from: https://quarto.org/docs/get-started/

Or using chocolatey:
```bash
choco install quarto
```

#### macOS
```bash
brew install quarto
```

#### Linux
```bash
# Download from https://quarto.org/docs/get-started/
# Or use your package manager, e.g., on Ubuntu:
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.4.549/quarto-1.4.549-linux-amd64.deb
sudo dpkg -i quarto-1.4.549-linux-amd64.deb
```

### 4. Create Your Branch

```bash
git checkout -b add-example-YOUR_NAME
```

### 5. Add Your Notebook

Create a new Jupyter notebook in `./docs/examples/`:

```bash
jupyter notebook docs/examples/
```

Example notebook structure:
- Title and introduction
- Clear explanations with markdown
- Code examples with outputs
- Conclusions or takeaways

### 6. Build and Preview

```bash
# Build the documentation
quarto render

# Preview locally (opens in browser)
quarto preview
```

The preview will show your notebook integrated into the documentation website.

### 7. Commit and Push

```bash
git add docs/examples/your_notebook.ipynb
git commit -m "docs: Add example on [YOUR TOPIC]"
git push origin add-example-YOUR_NAME
```

### 8. Create Pull Request

1. Go to https://github.com/bsdlab/aBCI-OSS-example
2. Click "New Pull Request"
3. Select your fork and branch
4. Add a clear description of your contribution
5. Submit!

## Tips for Good Contributions

- **Clear titles**: Use descriptive names for your notebooks
- **Explain your code**: Add markdown cells explaining what and why
- **Test locally**: Always build and preview before submitting
- **Keep it focused**: Each notebook should cover one topic or concept
- **Follow existing examples**: Look at other examples for inspiration

## Getting Help

- Check the [Contributing Guide](docs/guide/contributing.qmd) for details
- Open an issue if you encounter problems
- Ask questions in the repository discussions

## Repository Structure

```
.
├── docs/
│   ├── examples/          # 👈 Add your notebooks here
│   ├── guide/            # General documentation
│   └── index.qmd         # Homepage
├── src/abci/             # Example Python package
├── tests/                # Tests
├── _quarto.yml           # Quarto configuration
└── pyproject.toml        # Package configuration
```

## License

MIT License - see LICENSE file for details.
