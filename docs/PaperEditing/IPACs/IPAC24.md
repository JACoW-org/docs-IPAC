# IPAC'24 Editing reference manual

## Editors at Dawn (by Maurizio Montis, songwriter)

This page performs better with this song playing in the background.

<audio controls>
   <source src="../material/Editors_at_Dawn.mp3" type="audio/mpeg">
Your browser does not support the audio tag.
</audio>

*(content generated using Udio)*



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
  
    - [Writing a JACoW paper](../../../Paper/Writing/general/)
  
    - [LaTeX resources](../../../Paper/Writing/latex/)
  
    - [Word resources](../../../Paper/Writing/word/)

- [Paper editing checklist](../../Editing/TemplateReview/#resources-cited-in-the-video)

- [Editor Quick Start Guide.pdf](material/Editor_Quick_Start_Guide.pdf) ![](/img/attachment.png) ([Word version](material/Editor_Quick_Start_Guide.docx) ![](/img/attachment.png))

- [Editor Quality Assurance Overview.pdf](../Editing/material/Editor_Quality_Matrix.pdf) ![](/img/attachment.png)

- [JACoW-Indico Conference Tools](https://www.jacow.org/jict_ipac24/)

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

## Editing a paper

### Visual workflow

![](./img/pickflow.svg)

### Paper statuses recap

- <code style="color: green">Green dot</code>
  
    - Perfect paper, also in JACoW size
    - Paper can go to QA

- <code style="color: gold">Yellow dot</code>
  
    - Source file changed to fix problems
    - Author will proofread and approve or reject

- <code style="color: red">Red dot</code>
  
    - Extensive work necessary, author should fix and resubmit

### Editing workflow, step-by-step

1. [Assign yourself a paper](../Editor/assign.md)

2. **[Word source files only]** check the CatScan results in the comments. They will help you spot any problems in the PDF.
   ![](img/catscan_comment.png)

3. Try and **edit the latest PDF file first**. Follow the [Paper Editing Checklist](../../Editing/TemplateReview/).

4. If the result is compliant with JACoW quality (both on screen and on [print](#how-to-print-a-paper)) you can upload to Indico and [stick a **<code style="color: green">GREEN</code>** dot ("Accept")](../../Editor/edit/#accept-green).
   
     - If you needed to do small fixes in the PDF, remember to upload it as well. Select Request approval (<code style="color: gold">YELLOW</code>) and then [Confirm and approve it](../../Editor/edit/#confirm-and-approve) to have it green directly
       
       Go to step 6.

5. Otherwise, **working on the source files is needed**. Choose one of the following options
   
     1. **Lots of fixes are needed**, this will take some time. Or, few fixes are needed but you will spend too much time (>10'). Or, you may be not able to fix it due to lack of information (missing figure, missing reference, etc.).
        **Stick a <code style="color: red">RED</code> dot and [ask the author to resubmit a better version](Editor/edit/#request-changes-red)**.
   
     2. **You can fix it quickly in the source file**. 
        Re-create the PDF and do all the checks again. Upload all the files (PDF+source) and [Request approval (<code style="color: gold">YELLOW</code>)](../../Editor/edit/#request-approval-yellow).
        
        **NOTE**: For Word files on Windows , use the **Adobe PDF Printer** with JACoW's settings - **DO NOT USE** *»PDFMaker«* nor *»Save As PDF«* in Word nor any *»Generic PostScript Printer«*.
        
        Move on to another paper, back to step 1.

6. Whenever the paper is accepted (<code style="color: green">GREEN</code>) **bring the paper copy to a QA editor** for its last check.

### How to print a paper

Print the dotted paper with the JACoW stamping tool in Acrobat:

1. Classic Acrobat interface: menu `File` → `GREEN dot`
   ![](../img/JACoW-utils.jpg)

2. New Acrobat interface: `Menu` → `Plugins` → `For files` → `GREEN dot`
   ![](../img/JACoW-utils-new.png)

**Note**: No need to print Yellow and Red papers anymore.

Sometimes papers look good on screen and awful in print. Both media should be OK.
If the PDF is not printable, proceed with the electronic steps only and then assign a red dot.

---

## QA - Quality Assurance procedure

Click here to get [precise instructions on how to perform this with Indico](../../Editor/QA/).

1. Take a printed paper that **you did not process** initially from the QA folder/bin.

2. Download the PDF file from the server.

**There are two minimum requirements for a paper to be accepted for publication on JACoW:**

- It meets the technical requirements (fonts, page size, performance, etc.).

- Its general appearance is close to the template (i.e., the content fits within the margins and the title is in uppercase letters; Fig./Figure, missing punctuation, typos, and other minor errors do not matter at this point).

Then perform the following checks:

1. The **number of pages** is in the allowed range for that presentation type.

2. All pages of the document display without error.

3. All pages of the document display in <5 seconds.

4. Check the **margins** once more.

5. Look carefully at the text and check equations and figures for strange or bad fonts.

6. At this stage we can accept minor problems, however. If in doubt, consult with the Editor-in-Chief.

#### If everything is OK

- Choose **Approve QA** and submit.
- Mark or write "**QA OK**", sign the paper, and then return all paperwork to the QA'd folder on the Authors' reception desk

#### If anything is NOT OK

- Add a comment in the Indico timeline describing the issues you spotted. This will help the editor fix them or get them back to the author.

- Then, select **Fail QA** in Indico.

- Mark the printed paper as FAILED and return it to the editor. 
  The editing process will then restart.

---

## Sentence case for titles: How-To

Please note that in Indico now on titles should be written in [Sentence case](https://writer.com/blog/sentence-case/) (no more in Title Case). Example: `This is a paper title in SCL: sentence case letters`.

Remember that acronyms and specifically-written names of machines/institutes must
 not be changed from their format.

To quickly change a wrongly formatted title you can use [https://titlecaseconverter.com/](https://titlecaseconverter.com/) with the **Sentence case Style**.

Of course **in the paper titles must be in FULL UPPERCASE**.

---

## Suggestions to Indico, to IPAC'24+ organisers etc.

Please share your idea, comments, suggestions for a better organisation of such events, in particular about the use of Indico.

Open your browser to the [Telegra.ph free online service](https://telegra.ph/): [https://telegra.ph/](https://telegra.ph/)

Here you can create a rich text page (text, images, etc.) editable only from your browser.  
At the end of your editing be sure to **Publish it** (use the top-right *Publish* button), copy this page's URL and send it to the Editor-in-chief.

We recommend to create one page only per person, but feel free to edit more than one to separate contexts (e.g., Indico, general organisation, Acrobat editing, LaTeX...). In this case you'll get one URL per page. Be sure to save them all!
