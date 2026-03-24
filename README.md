# R for Publication

### Reporting, Tables, and Figures for Academic Manuscripts

Materials for the webbook and slides accompanying a two-session workshop (2 × 2 hours) on using RProjects and Quarto to produce 
publication-ready output: summary statistics, demographic tables, model results, 
figures, and final manuscripts in LaTeX and Word.

## Book

The workshop materials are available as a Quarto book at:  
👉 [daniela-palleschi.github.io/r-for-publication](https://daniela-palleschi.github.io/r-for-publication)

## Author

[Daniela Palleschi](https://daniela-palleschi.github.io/) -- [Scientific Support Staff for Data Management and Data Science/Statistics](https://www.leibniz-zas.de/en/personen/details/palleschi-daniela/daniela-palleschi) at the [Leibniz-Zentrum 
Allgemeine Sprachwissenschaft (ZAS)](https://www.leibniz-zas.de/en), Berlin, Germany


## Workshop overview

**Session 1 – Markdown foundations**

- Markdown basics: writing in Quarto
- Output formats: HTML, Word, PDF, and LaTeX
- Incorporating data: summary tables and inline reporting

**Session 2 – Model Outputs & Reporting**

- Reporting model results: model summary tables and inline reporting
- Producing figures: publication-ready plots, exporting, and cross-referencing

## Who this is for

Researchers with a working knowledge of R and the `tidyverse` who want to 
write reproducible, publication-ready documents in Quarto.

## Structure

```
r-for-publication/
├── .Rprofile
├── .gitignore
├── _quarto.yml              # book configuration
├── publishr.Rproj
├── index.qmd                # preface
├── references.qmd           # bibliography page
├── references.bib           # BibTeX references
├── apa.csl                  # APA citation style
├── custom.scss              # book theme
├── slides.css               # slides styling
├── slides-margin.lua        # Lua filter for slides link
├── margin-footer.html       # margin footer
├── chapters/                # book chapters source code
├── slides/                  # Reveal.js slide decks and source code
│   ├── _quarto.yml          # slides configuration
│   ├── zas-footer.scss      # slides theme
│   └── _extensions/         # Reveal.js extensions
├── logos/                   # ZAS/Leibniz logos
└── renv/                    # package environment
```

## Requirements

- **R** ($\geq$ 4.3): https://cran.r-project.org
- **RStudio** ($\geq$ 2022.07): https://posit.co/download/rstudio-desktop
- **Quarto** ($\geq$ 1.4): https://quarto.org/docs/download
- **LaTeX** (TinyTeX recommended): `quarto install tinytex`
- **R packages**: see `index.qmd` for the full list

## Rendering
```bash
# Render the full book (HTML + PDF)
quarto render

# Render only HTML
quarto render --to html

# Render a single chapter slide deck
quarto render slides/01_setup.qmd
```

## Licence

This work is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).  
You are free to share and adapt the materials with appropriate attribution.
