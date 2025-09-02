# Writing a paper in LaTeX: resources

## `jacow.cls`

Most important thing of all: **use the latest [jacow.cls](https://github.com/JACoW-org/JACoW_Templates/raw/master/LaTeX/A4/jacow.cls) file**.

It may be that your LaTeX distribution includes it already but in an *older version*. If in doubt, download it from the [JACoW github repository](https://github.com/JACoW-org/JACoW_Templates/tree/master/LaTeX) and install it in your distribution's   `TEXMFHOME` directory.

## How to use lowercase letters in title and section headings

The `jacow.cls` class file defines commands like `\title` and `\section` which go into
structuring your document. These commands force their text to be UPPERCASE. If you need include lowercase letters (e.g. for special acronyms or units) please use the `\NoCaseChange` command.

### Examples

```latex
\title{The 3 \NoCaseChange{GeV} Taiwan Light Source}
```

renders: **THE 3 GeV TAIWAN LIGHT SOURCE**

```latex
\section{RF Shielding at \NoCaseChange{SPring-8}}
```

renders: **RF SHIELDING AT SPring-8**

## Typesetting units

Numbers and units are typeset with the **thin space** between them, this should preferably an **non-breaking space** to insure that number and unit are not split over line breaks or column/page breaks. A thin space is entered in LATEX using `\,`. The alternative is to use the `siunitx` package (*preloaded in `jacow.cls`*) with `\SI{<number>}{<unit>}`.

**The numerical value always precedes the unit**, and a space is always used to separate the unit from the number, e. g. `10.2 m` (not `10.2m`).

The same [*should*](https://en.wikipedia.org/wiki/Degree_symbol#Typography) be done with temperature degrees: `30.2 °C` (not `30.2°C` or `30.2° C`).

The only **exceptions** to this rule are for the unit symbols for [**degree, minute, and second for plane angle**](https://en.wikipedia.org/wiki/Degree_symbol#Typography) (`°`, `'`, and `"`, respectively), for which no space is left between the numerical value and the unit symbol.

### Examples

- `\qty[]{10}{\um}` or `\qty[]{10}{\micro\meter}` - required way to get an upright unit

- `\qty[]{10}{m}` will give optimised spacing (thin space) between digit and unit

- `10\,m` (rather than `10 m`) alternative way to `siunitx`

- Exceptions: `10\,$^{\circ}$C` renders `10 °C` 
  
    - `\usepackage{gensymb}` &rarr; `\degree`
  
    - `\usepackage{textcomp}` &rarr; `\textdegree`

## References

Example of correct use of references in LaTeX:

```latex
\begin{thebibliography}{9}     %% use {99} for 10+ references!

  \bibitem{Author:IJC99-MONA2}
    A.N. Author \emph{et al.},
    ``Title of the paper’’,
    in \emph{Proc. IJC’99}, Nowhere, XY, May 2099, pp. 199--201.\\
    \url{doi:10.18429/JACoW-IJC2099-MONA2}

\end{thebibliography}
```

Renders:

[1] A.N. Author *et al.*, \`\`Title of the paper’’, in *Proc. IJC’99*, Nowhere, XY, May 2099, pp. 199--201.
`doi:10.18429/JACoW-IJC2099-MONA2`

**Note:** referenced titles should be in **Sentence case, not Title Case**.

## BibLaTeX

BibLaTeX can be use with **BibTeX** or **Biber**. As the automatically formatted output of BibLaTeX + Biber is superior to all other ways of generating a bibliography, this is recommended. If the requested formatting cannot be achieved, using BibTeX and pasting the final outcome into the source is a possibility.

The following *magic comments* are understood by most TeX-editors (e.g. TeXStudio, TeXnicCenter, TeXWorks). They are placed before the opening `\documentclass[]{}` command and overwrite settings in the TeX-editor:

```latex
% !BIB TS-program = biber/bibtex
% !BIB program = biber/bibtex
% !TeX spellcheck = en_GB/en_US
% !TeX program = pdflatex/lualatex/xetex
% !TEX TS-program = pdflatex/lualatex/xetex
% !TeX encoding = utf8/IsoLatin/IsoLatin
% !TEX root = <main file name>
```

TextMate, SublimeText, Atom, vimtex, and Overleaf understand some of the magic comments.

### References to a published JACoW paper

Please note the peculiar use of `venue` and `year` for a correct rendering:

```latex
@inproceedings{xiang:ipac2022-thpopt022,
  author = {R. Xiang and A. Arnold and S. Ma and P. Michel and P. Murcek and A.A. Ryzhov and J. Schaber and J. Teichert and P.Z. Zwartek},
  title = {{Study on QE evolution of Cs₂Te photocathodes in ELBE SRF Gun-II}},
  booktitle = {Proc. IPAC'22},
  %booktitle = {Proc. 13th International Particle Accelerator Conference (IPAC'22)},
  pages = {2617--2619},
  %eid = {THPOPT022},
  language = {english},
  keywords = {cathode, gun, SRF, operation, vacuum},
  venue = {Bangkok, Thailand, May 2022},
  series = {International Particle Accelerator Conference},
  number = {13},
  publisher = {JACoW Publishing, Geneva, Switzerland},
  month = {05},
  %year = {2022},
  issn = {2673-5490},
  isbn = {978-3-95450-227-1},
  doi = {10.18429/JACoW-IPAC2022-THPOPT022},
  url = {https://jacow.org/ipac2022/papers/thpopt022.pdf},
  abstract = {{...}},
}
```

In fact, the "standard way" with:

```latex
venue = {Bangkok, Thailand},
year = {2022}
month={05}
eid ={THPOPT022}
```

would render:

[14] R. Xiang *et al.*, “Study on QE evolution of Cs2Te photocathodes in ELBE SRF Gun-II,”
        in *Proc. IPAC’22*, Bangkok, Thailand, <mark>2022, paper THPOPT022</mark>, pp. 2617–2619.
        `doi:10.18429/JACoW-IPAC2022-THPOPT022`

By fine-tuning our `.bib` file:

```latex
venue = {Bangkok, Thailand, May 2022},
%year = {2022}
%eid ={THPOPT022}
```

we get the correct format:

[14] R. Xiang *et al.*, “Study on QE evolution of Cs2Te photocathodes in ELBE SRF Gun-II,”
 in *Proc. IPAC’22*, Bangkok, Thailand, <mark>May 2022</mark>, pp. 2617–2619.
 `doi:10.18429/JACoW-IPAC2022-THPOPT022`

### References to papers presented at the current conference in BibLaTeX

The following Bib-entries should be used for BibLaTeX to correctly reference papers presented at the current conference:

```latex
@article{bib-key,
  title = "{Title of the paper presented at...}",
  author = {Author, A. N. and Somebody, E.L.S.E.},
  journal = {\normalfont{presented at the 99th International JACoW
Conference (IJC'99), Nowhere, XY}},
  year = {May 2099, paper MONA2, this conference},
}
```

In abbreviated form:

```latex
@article{bib-key,
  title = "{Title of the paper presented at...}",
  author = {Author, A. N. and Somebody, E.L.S.E.},
  journal = {\normalfont{presented at IJC'99, Nowhere, XY}},
  year = {May 2099, paper MONA2, this conference},
```

### BibLaTeX in current JACoW class

The current BibLaTeX style has implemented the usage of `eventdate` field where `eventyear` has a higher priority than `year` (publication date). The above reference can be written as

```bib
@inproceedings{xiang:ipac2022-thpopt022,
  author = {R. Xiang and A. Arnold and S. Ma and P. Michel and P. Murcek and A.A. Ryzhov and J. Schaber and J. Teichert and P.Z. Zwartek},
  title = {{Study on QE evolution of Cs₂Te photocathodes in ELBE SRF Gun-II}},
  booktitle = {Proc. IPAC'22},
  %booktitle = {Proc. 13th International Particle Accelerator Conference (IPAC'22)},
  pages = {2617--2619},
  eid = {THPOPT022},
  language = {english},
  keywords = {cathode, gun, SRF, operation, vacuum},
  venue = {Bangkok, Thailand},
  eventdate = {2022-06-12/2022-06-17},
  series = {International Particle Accelerator Conference},
  number = {13},
  publisher = {JACoW Publishing, Geneva, Switzerland},
  month = {05},
  year = {2022},
  issn = {2673-5490},
  isbn = {978-3-95450-227-1},
  doi = {10.18429/JACoW-IPAC2022-THPOPT022},
  url = {https://jacow.org/ipac2022/papers/thpopt022.pdf},
  abstract = {{...}},
}
```
where the `eventdate` can be as minimal as `2022-06` to have the same effect in JACoW style.

The unpublished contribution should use the `eventtitle` field:

```bib
@unpublished{lin:ipac2022-moiygd2,
  author       = {C. Lin},
  title        = {{Recent Progress of Compact LAser Plasma Accelerator at Peking University}},
  eventtitle   = {IPAC'22},
  venue        = {Bangkok, Thailand},
  eventdate    = {2022-06-12/2022-06-17},
  abstract     = {{...}},
}
```
The ones presented at the current event need the `type` field:
```bib
@unpublished{...,
  ... ,
  type = {this conference},
}
```

JACoW also prefers the usage of ISO-4 form for Journals. A standard way is to put the abbreviated journal titles into the `shortjournal` field so that it can be compatible with other publishers. The ISO-4 abbreviations can be obtained at [https://marcinwrochna.github.io/abbrevIso/](https://marcinwrochna.github.io/abbrevIso/). There's also an official TeXstudio macro that can do it automatically.

## TeXstudio tricks

TeXstudio is a cross-platform open-source TeX Editor. It has a built-in macro system that uses the `QuickJS` language. There're some interesting macros in the [official repository](https://github.com/texstudio-org/texstudio-macro) that can be installed by opening the Menu `Macros` ⇒ `Edit Macros...` ⇒ `Browse`. The scripts under `jacow` folder are specifically created for our events. Pull them and assign a shortcut to it.

### Format `thebibliography`

This script automatically sorts `thebibliography` environment with regard to the citation order. A dummy entry will be created when a cited label does not exist in the environment. Those not cited in text will be ignored. The original environment will be put at the end of the document (after `\end{document}`) for comparison.

### To SI

This script separates the number part and converts the selected text to a unit block. For example

- `$2\times10^{2}\mu\mathrm{m}$` ⇒ `\SI{2e2}{μm}`
- `$^{\circ}C$` ⇒ `\si{°C}`

Enable regular expression in `Search` and look for numbers with `-?±?\d+\.?[\^\d]*` and all potential units will be highlighted. Then select the quantity with unit and run the macro to reduce the tedious input.

### ISO-4

This script converts the selected text to its ISO-4 abbreviation form. `cURL` needs to be installed can be callable in order to make an HTTP GET request. If you’re working with `.bib` database, I recommand to duplicate the `journal`/`journaltitle` line, run the macro on one of the Journal titles and change the field to `shortjournal`.

## Other tricks

- When using `\usepackage{authblk}` you probably see a spacing between author and affiliation block.
  This can be suppressed using `\setlength{\affilsep}{0pt}`
  If there is a `, and` before the last author’s name, this can be suppressed using `\renewcommand\Authsep{, }`

- Equation formatting: the JACoW template requires the equation numbers to be put inside parenthesis. This can easily achieved using `\eqref{label} instead of (\ref{label})`

## Resources

- [The Compehensive LaTeX Symbol List](https://tug.ctan.org/info/symbols/comprehensive/symbols-a4.pdf)
