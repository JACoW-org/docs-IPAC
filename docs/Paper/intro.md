# Paper editing workflow

Paper editing in JACoW conferences refers to reviewing the layout and readability of a [paper submitted for the proceedings](https://www.jacow.org/Authors/HomePage) in relation to the [JACoW template](https://github.com/JACoW-org/JACoW_Templates/raw/master/LaTeX/A4/JACoW_LaTeX_A4.pdf).

---

In the rest of this documentation we’ll refer to the document being assessed as an `editable` for the sake of simplification. Still in the case of the editing module, this document could be a paper, a slides deck or a poster. The editing process is exactly the same for all three types of documents.

---

## Editing States

The editable can be in one of the following states:

- **Ready to Review** - the editable is ready to be assigned and reviewed by an editor right after its submission.
- **Assigned** - the editable has been assigned to an editor ("<code style="color: purple">purple dot</code>").
- **Accepted** - final state - the editable has been accepted ("<code style="color: green">green dot</code>").
- **Rejected** - final state - the editable has been rejected; This status is usually not used in JACoW conferences.
- **Needs changes** - the editable needs corrections to be performed **by the author(s)** ("<code style="color: red">red dot</code>");
- **Needs confirmation** - the editor has made modifications to the editable, which **need to be approved** by the author(s) ("<code style="color: gold">yellow dot</code>").
- **In QA** - After the editor accepts the paper, the QA editors do a last quality check before the paper is published. This is characterised by an "Accepted" status and a "QA02: QA Pending" tag.
- **Final** (**QA'd**)- the editable is ready for publishing. This is characterised by an "Accepted" status and a "QA01: QA Approved" tag.

Here is a diagram of the editing states process:

![](img/editingworkflow.jpg)

## Workflow overview for the author (submitter)

Any conference in JACoW requires the authors to prepare a paper to eventually be published in the proceedings.

1. The submitting author will hence submit a paper by **uploading their files** under the **"Editing" section** of their contribution page.

2. The paper (editable) gets **assigned to an editor for review**. *Until then, new versions of the files are uploadable by the author*. 

3. The editor will review the editable for the proceedings. This paper can get in three states:
   
     1. <code style="color: green">green</code>: the paper passed the first checks. No action by the author is needed
   
     2. <code style="color: gold">yellow</code>: the paper was corrected by the editor (in terms of layout). The author needs to review and eventually accept the changes. If these are accepted, the paper will go to <code style="color: green">green</code> status and no further action from the author is needed. If the author, instead, rejected the changes, the editable would gets to <code style="color: red">red</code> and the author have to upload a new, better version of the files
   
     3. <code style="color: red">red</code>: the editable needs modifications that the editor can't perform. The author, then, needs to enhance the material and resubmit. After resubmission the editable gets back to "Ready for review", available for the editor to work again on it. 

4. Whenever the editable gets in the green status, it is available for Quality Assurance (QA).

5. The QA editors will further review the paper. If this succeeds, the paper is "QA OK" and ready to be published.

6. Otherwise, the paper will get back to the original editor for fixes and, eventually, get to one of the three statuses above (green/yellow/red).
