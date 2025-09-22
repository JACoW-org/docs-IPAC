# Final proceedings

This feature is the most important of CAT. It generates a static HTML/JavaScript website to be published on JACoW.org.

CAT has been created with simplicity in mind. For this reason, a simple button is all is need to create the proceedings **Site**:

![](img/final_proceedings.png)

Before this it is important to correctly configure all the [PURR settings](https://purr-docs.jacow.org/Functionalities/statusAndSettings/).

Despite its interface being really simple, a lot of work is done in the background.

Please refer to the [official CAT/PURR documentation](https://purr-docs.jacow.org/Functionalities/finalProceedings/) for the details of this feature.

This functionality, however, is offered in two flavours: pre-press and final proceedings.

## Pre-press proceedings

At IPACs it is use to publish the so called "pre-press" proceedings on the last Friday of the conference. This set is a temporary, partial and possibly changing package that can easily be published on the conference's website.

The main characteristics of the pre-press proceedings are:

- contributions that have been accepted (green state) are included, regardless of their QA status

- no slides are published.

It is recommended to generate the pre-press package, to compress it and to downloaded on a client computer that will eventually move the proceedings onto the conference website.

!!! warning "Do not publish the meow server URL"
    CAT creates the pre-press and the final proceedings on the meow server. Please be aware that **this is a working area** which could break or disappear at any time. For this reason, **it is forbidden to publish the pre-print URL of the meow server** on any public website (like the official conference website). This URL will not work after the final proceedings are published, resulting in broken links and bad search engines indexing (like Google). Instead, **download the zip file from Indico and upload it onto your conference website**.

## Final proceedings

This feature is intended for the creation of the final proceedings to be published on JACoW.org. It will include only papers and slides that have been QA'd.

Please refer to the [dedicated CAT/PURR documentation](https://purr-docs.jacow.org/Functionalities/finalProceedings/#pre-press-and-final-proceedings) for more information.

## Notes on the "preprint" setting (LPR)

IPAC has a long tradition of publishing a subset of the papers in a refereed Journal. These papers are usually Light Peer Reviewed (LPR) by a peer review team. This task is managed by the [Indico "peer review"](https://learn.getindico.io/conferences/papers/peer_reviewing/) module, where authors, reviewers and judges cooperate in a timeline similar to the one about editing.

Since the accepted LPR papers are to be printed in a journal, the publication on JACoW.org or on any other website should be marked as "preprint". For every contribution CAT checks about its possible presence in the Indico peer review module. If this contribution is also accepted there (i.e., the paper is accepted for publication in the LPR journal), the sentence set in the "Preprint" field of PURR's settings is over-stamped in the PDF.

## Notes on duplicate contributions

By definition a contribution can be presented only in one session. IPAC uses to offer a special Students Poster Session on the Sunday to offer more visibility to young generation scientists. These posters are to be presented twice, once in the Sunday Poster Session and then in one normal Poster Session from Monday to Thursday.

To accomplish this task it is needed to duplicate contributions in Indico.

However, only one paper is to be edited and then published in the proceedings. For this reason we use a special custom field called `CAT_duplicate_of`. If this field is set in a contribution, CAT knows that this contribution is a duplicate of the one its programme code is saved in the `CAT_duplicate_of` field.

In the example of the figure below, the contribution `SUPM014` has its `CAT_duplicate_of` field set to `THPL082`.

Contribution details:

![](img/CAT_duplicate_of_set.png)

Proceedings:

![](img/CAT_duplicate_of.png)
