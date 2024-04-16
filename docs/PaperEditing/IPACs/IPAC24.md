# IPAC'24 Editing reference manual

## Web References

- IPAC'24 website: [https://ipac24.org](https://ipac24.org)

- IPAC'24 Indico event: [https://indico.jacow.org/e/IPAC24)](https://indico.jacow.org/e/IPAC24)

- JACoW templates: [https://www.jacow.org/Authors](https://www.jacow.org/Authors)
  
    - [Current JACoW Template (Word)](https://github.com/JACoW-org/JACoW_Templates/raw/master/MSWord/A4/JACoW_W16_A4.pdf)
  
    - [ZIP file with all files](https://github.com/JACoW-org/JACoW_Templates/archive/refs/heads/master.zip)

- Instructions for Authors:
  
    - Paper formatting: [https://ipac24.org/paper-formatting](https://ipac24.org/paper-formatting)
  
    - Paper submission: [https://ipac24.org/paper-submission](https://ipac24.org/paper-submission)
  
    - Poster guidelines: [https://ipac24.org/poster-guidelines](https://ipac24.org/poster-guidelines)
  
    - Speaker preparation guidelines: [https://ipac24.org/speaker-preparation-guidelines](https://ipac24.org/speaker-preparation-guidelines)

---

## Editor Computers

You can use any computer that is available, but use the same computer throughout the conference.

All of the software settings and preferences should already be set, but if you thinks something's wrong, please contact the editor-in-chief.

You will find on the Windows desktop a folder named **PO** (short for **P**roceedings **O**ffice). This is the only folder that is backed up, so please **DO NOT RENAME OR MOVE IT**. **Use this folder for all the papers you are working on**. There is also a folder named **DONE** inside PO (if missing, go and create it). When you are done processing a paper (successfully or not, it doesn't matter), create a sub-folder under the DONE folder and name it according to its paper code. Move all of that paper's files into the new sub-folder.

*Example* When working on paper MOPC999, all its files will stay in

`C:\Users\XXXX\Desktop\PO`

(i.e., the PO folder on your desktop). 

When you're done, all the processed files of that paper should be moved to

`C:\Users\XXXX\Desktop\PO\DONE\MOPC999`

---

## Programme codes explained

### Example

```
MOPC999 = MO P C 999

<paper-code> = <day> <presentation-type> <location> <number>
```

### BNF & explanation

```
<paper-code>        ::= <day> <presentation-type> <location> <seq-number>
<day>               ::= "SU" | "MO" | "TU" | "WE" | "TH" | "FR" 
<presentation-type> ::= "X" | "Y" | "Z" | "A" | "B" | "C" | "P" | "U" | "V" | "E" | "W" | "F"
<location>          ::= "B" | "D" | "N" | "A" | "R" | "C" | "S" | "G"
<number>            ::= <digit> |  <digit>  <digit>  |  <digit>  <digit>  <digit> 
```

| Day                | Presentation Type                      | Location                                        |
| ------------------ | -------------------------------------- | ----------------------------------------------- |
| **SU** - Sunday    | **X** – Invited #1                     | **B** - Omni Broadway Ballroom                  |
| **MO** - Monday    | **Y** – Invited #2                     | **D** - Music City Center Davidson Ballroom     |
| **TU** - Tuesday   | **Z** – Invited #3                     | **N** - Music City Center Room 104              |
| **WE** - Wednesday | **A** – Contributed #1                 | **A** – Music City Center Exhibit Hall A (full) |
| **TH** - Thursday  | **B** – Contributed #2                 | **R** – Rock ’n Roll in MCC Exhibit Hall A      |
| **FR** - Friday    | **C** – Contributed #3                 | **C** – Country area in MCC Exhibit Hall A      |
|                    | **P** – Poster                         | **S** – Blues in MCC Exhibit Hall A             |
|                    | **U** – Industry #1                    | **G** – Bluegrass in MCC Exhibit Hall A         |
|                    | **V** – Industry #2                    |                                                 |
|                    | **E** – Entertainment                  |                                                 |
|                    | **W** – Opening session <br/>(Welcome) |                                                 |
|                    | **F** – Closing session<br/>(Farewell) |                                                 |

### Presentation type codes and paper length

| Type code | Paper length                                               |
| --------- | ---------------------------------------------------------- |
| X, Y, Z   | Invited contributions: **5 pages** + 1 for references only |
| U, V      | Industry session: **5 pages** + 1 for references only      |
| A, B, C   | Contributed Oral: **3 pages** + 1 for references only      |
| P         | Poster: **3 pages** + 1 for references only                |

---

## Paper editing check list

Please see the [JACoW Template review page](../../Editing/TemplateReview/#resources-cited-in-the-video).

---

## Useful material and links

### Handouts

- [Editor Quick Start Guide.pdf](material/Editor_Quick_Start_Guide.pdf) ![](/img/attachment.png) ([Word version](material/Editor_Quick_Start_Guide.docx) ![](/img/attachment.png))
- [Editor Quality Matrix.pdf](../Editing/material/Editor_Quality_Matrix.pdf) ![](/img/attachment.png)
- [Useful Short Cut Keys](../Editor/shortcuts.md)

### LaTeX tutorials (jacow.org)

- [LaTeX Editing, Basic](https://www.jacow.org/Editors/BasicLaTeX)
- [LaTeX Editing, Advanced](https://www.jacow.org/Editors/AdvancedLaTeX)

### Sentence case for titles: How-To

Please note that in Indico now on titles should be written in [Sentence case](https://writer.com/blog/sentence-case/) (no more in Title Case). Example: `This is a paper title in SCL: sentence case letters`.

Remember that acronyms and specifically-written names of machines/institutes must
 not be changed from their format.

To quickly change a wrongly formatted title you can use [https://titlecaseconverter.com/](https://titlecaseconverter.com/) with the **Sentence case Style**.

Of course **in the paper titles must be in FULL UPPERCASE**.

### Editing tips & tricks (JACoW.org)

- [Common Author Oversights](https://www.jacow.org/Editors/CommonAuthorOversights)

---

## Editing a paper

First of all you need to assign yourself a paper. Follow [these instructions](../Editor/assign.md) to do so in Indico. Remember to select the kind of paper you want to process according to your skills (Word, LaTeX, LibreOffice...) 

Download the files from Indico. Start with the latest version of the PDF and do all the checks and fixes needed (explained in more detail [here below](#processingverifying-the-pdf-file)). 

If the result is compliant with JACoW quality you can upload to Indico and stick a **GREEN** dot. 

Otherwise, you need to work on the source files. In this case download all the files (by the useful ZIP) and work on them. 

Re-create the PDF and do all the checks again. Here is a visual representation of the editing workflow:

![](../../img/process_flowchart-indico.png)

**NOTE**: For Word files on Windows , use the **Adobe PDF Printer** - **DO NOT USE** *»PDFMaker«* nor *»Save As PDF«* in Word nor *»Generic PostScript Printer«*.

**NOTE**: If you have to  open the source file to create the PDF, the paper must be assigned a yellow dot, even if no changes were made to the source. If there are 
subsequent problems that cannot be resolved, a Red dot should be assigned.

### Processing/Verifying the PDF File

**See editing criteria** in [Quality Assurance Overview](material/QualityAssuranceOverview2021.pdf) ![](/img/attachment.png) 
**Check hints for editing** in [Editing Recommendations](material/editing-recommendations.pdf) ![](/img/attachment.png) 

1. Check fonts
2. Check number of pages
3. Check readability and display time
4. Apply the JACoW Media Box (Crop)
5. Check margins
6. Check page size
7. Check formatting and [Common Author Oversights](https://www.jacow.org/Editors/CommonAuthorOversights)
8. Fix the problems (if you estimate that it takes you more than one hour, send it back to the author → RED dot)

---

1. Check the **fonts** by opening »File → Document Info → Fonts« (shortcut `»Ctrl + D + Fonts«`).  
   All fonts should be embedded (listed as "`Embedded`" or "`Embedded Subset`").  
   Font types can be "`Type 1`", "`TrueType`", or "`OpenType`" with any kind of encoding.  
   If the fonts have not been embedded, use Acrobat Preflight under »Tools → 
   Print Production → Preflight → PDF fixups → Embed fonts« (shortcut `»Ctrl + Shift + X + ...«`).  
   If there is a problem, go back to the document and try to change the fonts or, if it is a LaTeX paper and you are not a LaTeX expert, pass the paper to an expert to fix the font problem. When a WORD document has been repaired, make a new PDF file.

2. Check the **number of pages**: there are usually limits on the number of pages which vary according tothe presentation type (more for oral presentations than for posters).

3. Check that **all pages are readable** and are displayed in a reasonable time (every page should display in less than about 5/N seconds, where N is the speed of the editor's computer in GHz).

4. **Resize the document** by using  
   
     1. »Crop and Save« from the JACoW utils by opening »File → Crop and Save« or  
   
     2. use the PitStop Action List called **JACoW Media Box**. Open the Action List Control Panel ![](../img/Action_List_Icon.png), locate the "JACoW Media Box" in the Local List and Run it.

5. Change to full page view and enable the grid (View → Show Form Grid or shortcut `»Ctrl-U«`), if not already on and check that **all text and images are inside the margins**.  
   The  text should now be inside the margins on all pages (~±1 mm). If part of the text or graphics is outside the box, the offending objects may be moved using the "Select Object" tool in the PitStop toolbar ![](../img/Select_Tool_icon.gif) and then either hold down the CTRL key or click on the move tool ![](../img/Move_Tool_icon.gif), and then use the keyboard arrows to nudge objects into position.

6. Check the **page size** at the bottom of the window: it should be **595 x 792 pt**. Move the mouse pointer to the lower left corner of the screen to make the page size appear.

7. If the formatting is wrong, download the source file, edit the document, make a new PDF file and start over.
   
     - Save the .PDF file using the Save As... command (`»Ctrl-Shift-S«`).
       Check that the name of this final PDF is the <paper_id>.PDF.
   
     - If the PDF file has to be made or remade, even if the problem is trivial (e.g., wrong paper size) assign a YELLOW dot, upload the modified files, record your actions through the processing interface, add the tags that describe the problem best, and forward the paperwork for filing.  
       Always be clear in your comments about processing so that others can understand what the problems are. 
       The author will be invited to download the .PDF, check it, and set the 
       paper to green if they approve the editor's version or come to the 
       proceedings office to proofread the paper and let the staff know whether
        or not the paper is acceptable.

8. If the problem is very complicated and you cannot fix it yourself, check to see whether another editor can fix it. If this is the case, ask the alternative editor to reassign the paper to himself.
   If it is estimated that a paper will take more than an hour to fix, assign a red dot, clearly explain the problem through the processing interface, and ask the author to fix at his earliest convenience (RED dot).

---

### Print the paper & upload

Print the dotted paper with the stamping tool in Acrobat (menu File → GREEN/YELLOW/RED dot ) & check visually  

![](../img/JACoW-utils.jpg)

Sometimes papers look good on screen and awful in print. Both media should be OK.
If the PDF is not printable, proceed with the electronic steps only and then assign a red dot.

- <code style="color: green">Green dot</code>
  
    - Nothing is wrong
    - No further action required

- <code style="color: gold">Yellow dot</code>
  
    - Source file changed to fix problems
    - Author should proofread

- <code style="color: red">Red dot</code>
  
    - Extensive work necessary, author should fix and resubmit
    - Author should come to the proceedings office

- <code style="color: brown">Brown dot</code>
  
    - Major screw-up, template not used
    - **Only for education in the editorial office**

#### Upload

Click here to get [the precise steps to follow in Indico](../../Editor/edit/#judging) to *judge* (upload files and assign a dot). Then

- Place the paperwork in the appropriate place for filing.

- Click "Get Next Paper" to be assigned your next paper for processing.

---

## QA - Quality Assurance procedure

Click here to get [precise instructions on how to perform this with Indico](../../Editor/QA/).

### Process:

1. Take a printed paper that **you did not process** initially from the QA folder/bin

2. Download the PDF file from the server

**There are two minimum requirements for a paper to be accepted for publication on JACoW:**

- It meets the technical requirements (fonts, page size, performance, etc.).

- Its general appearance is close to the template (i.e., the content fits within the margins and the title is in uppercase letters; Fig./Figure, missing punctuation, typos, and other minor errors do not matter at this point).

Then perform the following checks:

1. The **title** on the paper is the same as in the database (if not, ask the Author reception to *correct* it in Indico).

2. The **number of pages** is in the allowed range for that presentation type.

3. All pages of the document display without error.

4. All pages of the document display in <5 seconds.

5. Check the **margins** once more.

6. If you notice any changes in the **author list**, *highlight* them on the paper (as an indication for the people making the later checks). Alternatively, fixes to author list can be done at this stage.

7. Look carefully at the text and check equations and figures for strange or bad fonts.

#### If everything is OK

- Choose **Approve QA** and submit.
- Mark or write "**QA OK**", sign the paper, and then return all paperwork to the QA'd folder with the page with the dot on top.

#### If anything is NOT OK

- If the paper can be fixed in the PDF, assign it to you, fix the problem and make a comment in the database, upload the new PDF. Proceed with Approve QA as above.

- If you need to go back to the source, select **Fail QA** by sending the paper back to the *original editor* or *reassigning it paper to yourself*.  
  Then fix it, note what you did in the database (as usual), and upload the 
  new PDF file. This *should* result in a YELLOW dot again.

- If it is not fixable by you nor by the editor, select **Fail QA** then pass the paperwork to the editor themselves.  
  The original editor, then, has to assign a **red dot** explaining all the problems in the usual way. The author will be notified by email as usual, so the all process can start again.  
  Put the paper in the **QA Failed** bin.

---

## Suggestions to Indico, to IPAC'24+ organisers etc.

Please share your idea, comments, suggestions for a better organisation of such events, in particular about the use of Indico.

### How-to:

Open your browser to the [Telegra.ph free online service](https://telegra.ph/): [https://telegra.ph/](https://telegra.ph/)

Here you can create a rich text page (text, images, etc.) editable only from your browser.  
At the end of your editing be sure to **Publish it** (use the top-right *Publish* button), copy this page's URL and send it to the Editor-in-chief.

We recommend to create one page only per person, but feel free to edit more than one to separate contexts (e.g., Indico, general organisation, Acrobat editing, LaTeX...). In this case you'll get one URL per page. Be sure to save them all!
