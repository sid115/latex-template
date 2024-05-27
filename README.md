# General Purpose LaTeX Template

This repository contains a general-purpose LaTeX template to help you get started with your document creation. It provides a customizable structure suitable for various types of documents, such as reports, articles, and theses.

## Folder Structure

- **.gitignore**: Specifies files and directories to be ignored by Git.
- **header.sty**: Custom LaTeX package containing the header configuration and commonly used packages.
- **images/**: Directory to store images used in the document.
- **literatur.bib**: Bibliography file containing references in BibTeX format.
- **main.tex**: The main LaTeX file where the document is compiled.
- **Makefile**: Makefile for automating the LaTeX compilation process.
- **output/**: Directory where the compiled PDF and other output files are stored.
- **pdfs/**: Directory to store related PDF files or supplementary documents.
- **sections/**: Directory to store individual LaTeX files for different sections/chapters of the document.

## Getting Started

### Prerequisites

Ensure you have LaTeX installed on your system. You can install it using:
- **TeX Live** (cross-platform)
- **MiKTeX** (Windows)
- **MacTeX** (Mac)

Additionally, make sure you have a BibTeX compatible bibliography tool.

### Using the Template

The following steps expect a UNIX-like environment. If you are using Windows, you can use the [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install) or a similar tool.

1. **Clone the Repository**
    ```bash
    git clone https://github.com/sid115/latex-template.git
    cd latex-template
    ```

2. **Add Your Content**
    - Define the title, subtitle, author and date in the `main.tex` file.
    - Put your images in the `images/` directory.
    - Put any supplementary PDFs in the `pdfs/` directory.
    - Add sections and chapters in the `sections/` directory.
    - Include these sections in the `main.tex` file.
    - Update `literatur.bib` with your references.

3. **Compile the Document**
    - Compile manually by running:
      ```bash
      pdflatex main.tex
      bibtex main
      pdflatex main.tex
      pdflatex main.tex
      ```
    - Or, use the provided Makefile for easier management:
      ```bash
      make
      ```
    - The compiled PDF will be saved in the `output/` directory.

### Customizing

- Modify the `header.sty` file to add or remove packages, define new commands, or change document settings.
- Modify the `Makefile` to add new rules or change the compilation process.
