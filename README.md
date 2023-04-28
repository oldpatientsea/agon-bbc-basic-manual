# agon-bbc-basic-manual

This repository contains source needed to generate an adaptation of R.T. Russell’s BBC BASIC (Z80) Manual to describe the implementation of BBC BASIC on the Agon light™ and AgonLight 2. It is made with the permission of the original author, using information from Dean Belfield’s wiki with his consent.

Documentation is written in asciidoc and asciidoctor will be used to generate HTML, ePUB and PDF output.

Licence to be determined. It will be as open as possible while respecting the copyrights of the authors of the original sources.

## Rough Roadmap

1. Convert R.T. Russell’s BBC BASIC (Z80) Manual to adoc source from which the contents of the original site can be regenerated
2. Revise, removing sections that refer to different hardware or are otherwise not relevant.
2. Incorporate changes made to date by Dean Belfield to BBC BASIC (Z80) for Agon as documented in his wiki.
3. Enhance with extra information including potentially 
(a) better instructions for newcomers to BASIC (the original docs assume familiarity with the language)
(b) More Agon-specific material, eg instructions on updating firmware
4. Create an automated workflow for generating and publishing the outputs from the source (possibly using GitHub actions) 
