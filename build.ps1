# build.ps1 — Export Markdown -> Word (.docx) mit APA-7-Zitaten
# Aufruf im Projektverzeichnis:  powershell -ExecutionPolicy Bypass -File .\build.ps1
$ErrorActionPreference = 'Stop'

New-Item -ItemType Directory -Force -Path output | Out-Null

# PowerShell expandiert keine Globs an externe Programme -> Dateien selbst auflösen (sortiert nach Name)
$files = (Get-ChildItem -Path src -Filter *.md | Sort-Object Name).FullName

pandoc @files --citeproc --bibliography=references.bib --csl=apa-7th.csl -o output/hausarbeit.docx

if ($LASTEXITCODE -ne 0) { throw "pandoc-Export fehlgeschlagen (Exit $LASTEXITCODE)" }
Write-Output "Fertig: output/hausarbeit.docx"
