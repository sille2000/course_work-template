#!/usr/bin/env bash
# build.sh — Export Markdown -> Word (.docx) mit APA-7-Zitaten (macOS/Linux)
# Aufruf im Projektverzeichnis:  ./build.sh
set -euo pipefail

mkdir -p output

pandoc src/*.md --citeproc --bibliography=references.bib --csl=apa-7th.csl -o output/hausarbeit.docx

echo "Fertig: output/hausarbeit.docx"
