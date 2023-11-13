# Notes on the Proceedings Package

For additional details on the creation of Proceedings with CAT please refer to the [official PURR documentation](https://purr-docs.jacow.org/Functionalities/finalProceedings/). 

## Composition of the Package

The Proceedings Package includes multiple resources:

1. a static (HTML+JavaScript) website with indexes multiple indexes:
   
     1. by session
   
     2. by classification
   
     3. by author
   
     4. by institute
   
     5. by institute's DOIs
   
     6. by keywords
   
   by definition this website does not include links to external resources which are not permalinks like DOIs or Creative Commons licenses. This avoids any possible future broken links.

2. single paper PDFs and, optionally, slide's PDFs. Paper PDFs have all fonts embedded and present metadata (conference information, ISBN/ISSN numbers, publication license etc.) overstamped by way of [PDF annotations](https://pdfa.org/resource/iso-32000-pdf/)

3. a single PDF (*"Proceedings Volume"*) containing all the papers and Table of Contents. In this PDF the metadata above is overstamped by actual PDF text

4. a single *"Proceedings at a glance"* PDF containing only the first page of every paper, with a direct link to the paper's full PDF on JACoW.org

5. DOIs for the proceedings package and for every single paper

6. additional conference material from Indico's event global *materials*

## Additional data

CAT creates an export of paper's metadata to be used with [INSPIRE](https://inspirehep.net/)'s scholarly information in high energy physics database. This export is created in JSON format and can be directly imported into INSPIRE.

The JSON file is not linked from the proceedings' home page. It is named after the conference short name as `inspire-[EVENT].jsonl` and stored under the `json` directory. When the proceedings are published, it can be easily retrieved at this URL: 

`https://JACoW.org/[EVENT]/json/inspire-[EVENT].jsonl`

where `[EVENT]` is, for example, `IPAC2024`.


