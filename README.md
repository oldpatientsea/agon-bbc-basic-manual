# agon-bbc-basic-manual

This repository contains source needed to generate an adaptation of R.T. Russell’s BBC BASIC (Z80) Manual to describe the implementation of BBC BASIC on the Agon light™ and AgonLight 2. It is made with the permission of the original author, using information from Dean Belfield’s wiki with his consent.

Documentation is written in asciidoc and asciidoctor will be used to generate HTML, ePUB and PDF output.

Licence to be determined. It will be as open as possible while respecting the copyrights of the authors of the original sources.

## Directory structure

```
├── dist
│   ├── EPUB
│   └── HTML
│       ├── _
│       │   ├── css
│       │   ├── font
│       │   ├── img
│       │   └── js
│       │       └── vendor
│       └── agon-bbc-basic-manual
│           └── 0.1
│               └── _images
├── epub
├── meta
├── modules
│   └── ROOT
│       ├── attachments
│       ├── examples
│       ├── images
│       ├── pages
│       └── partials
└── originals
    ├── RTRussellBBCBASICZ80
    └── wiki
```

### dist

This for the moment is a place to cache manually generated output files. Once a fully automated build process is in place, it will probably be removed.

There will be one folder per output type. At present these comprise alpha versions of HTML and EPUB. Neither should be considered a formal release.

### originals

This is a dump of the original BBC BASIC (Z80) manual, each html page transformed into adoc format. 

The headers and footers have been removed from each individual page because otherwise ebook (EPUB, PDF) output repeats each at the head and foot of each section. The copyright from the footer has been placed in its own adoc file. This and the header information will need to be combined with the rest of the files in the process of transforming them into the desired output (HTML, EPUB, PDF). 

The content of the BBC BASIC for Agon wiki page has also been dumped here, likewise transformed. 

### modules/ROOT/pages

The modules/ROOT directory structure is dictated by the conventions used by [Antora](https://antora.org/), the tool that will be used to generate HTML output from the asciidoc source files.

The "pages" directory contains the .adoc files used to generate the output.

This contains the transformed BBC BASIC (Z80) manual files which will be used as the source of the BBC BASIC (Z80) for Agon manual.

The starting point is the contents of the originals directory, but these will diverge as the files are updated with Agon specific edits. 

### epub

This contains any files used to organise EPUB output. 

## Generating Documentation

### Requirements

asciidoctor for testing each file individually
antora for generating HTML site
node.js LTS release to run antora
opt: nvm to manage node.js

### Building

For simple testing, for each file in src/adoc,

```
asciidoctor filename.adoc
```

Antora is used to generate the HTML output. See https://github.com/oldpatientsea/agon-bbc-basic-manual-playbook 

For EPUB

```
cd epub
asciidoctor-epub3 BBCBASICforAgonLight.adoc
```

## Rough Roadmap

1. Convert R.T. Russell’s BBC BASIC (Z80) Manual to adoc source from which the contents of the original site can be regenerated
2. Revise, removing sections that refer to different hardware or are otherwise not relevant.
2. Incorporate changes made to date by Dean Belfield to BBC BASIC (Z80) for Agon as documented in his wiki.
3. Enhance with extra information including potentially 
(a) better instructions for newcomers to BASIC (the original docs assume familiarity with the language)
(b) More Agon-specific material, eg instructions on updating firmware
4. Create an automated workflow for generating and publishing the outputs from the source (possibly using GitHub actions) 

