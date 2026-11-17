# AGENT.md — Schreibprojekt: Hausarbeiten an der Embry-Riddle Aeronautical University

## Projektziel

Eine lokale, kostenlose und reproduzierbare Schreibumgebung für wissenschaftliche Hausarbeiten, die in VS Code betrieben wird. Ziel: regelbasierte Sprachkorrektur (keine LLM-Umformulierung), sauberes APA-7-Zitieren, versionierte Entwürfe als Autorenschafts-Nachweis.

## Kontext

- Student: Thomas Silier, Embry-Riddle Aeronautical University (ERAU)
- Zitierstil: **APA, 7. Auflage** (Autor-Datum-System, In-Text-Zitate + alphabetische Reference List). ERAU-Standard, campusübergreifend. Im Zweifel gilt die Angabe im Kurs-Syllabus.
- Sprachen: überwiegend **Englisch (American English)**, gelegentlich **Deutsch**
- Endformat: Word (.docx) für Formatierung, Betreuer-Kommentare und Abgabe
- Referenzen: APA-Beispiele der ERAU Hunt Library unter guides.erau.edu/citestyle (inkl. Luftfahrtquellen wie FAA, NTSB)

## Feste Regeln (immer einhalten)

1. **Nur regelbasierte Korrektur.** Keine LLM-basierten Umformulierungen ganzer Sätze oder Absätze (kein Grammarly Rewrite, kein DeepL Write, kein ChatGPT-Paraphrasieren). Begründung: Schreibstil bleibt eigenständig, kein KI-Detektor-Risiko (Turnitin), keine unerlaubte Hilfe im Prüfungsrecht.
2. **Alles lokal.** Textinhalte verlassen das Gerät nicht. Cloud-Tools nur, wenn regelbasiert und nicht ablehnbar (Duden Mentor für deutsche Finalchecks ist erlaubt).
3. **Git von der ersten Zeile an.** Jede Arbeit wird versioniert; Commits mit Zeitstempeln dienen als Beleg der eigenständigen Autorenschaft (wichtig bei möglichen False Positives der KI-Erkennung).
4. **APA 7 konsequent.** Zitate, Reference List, Überschriften und Titelseite nach APA-7-Vorgaben; bei Luftfahrtquellen (FAA-Orders, NTSB-Reports, Advisory Circulars) die ERAU-Guides beachten.

## Setup (einmalig prüfen und einrichten)

> **Status: geprüft und eingerichtet am 2026-11-17** (Windows 11, PowerShell 5.1, VS Code 1.146.0) — siehe Checkliste unten.

### Programme

- **Harper** (regelbasierter Grammatikprüfer, Open Source, offline):
  - Windows-Voraussetzung: **scoop** einmalig installieren (falls nicht vorhanden):
    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    ```
    Danach **neues Terminal öffnen**, damit `scoop` im PATH ist. Dann:
    `scoop install harper` → installiert **harper 3.2.0** mit den Binaries `harper-cli` (CLI, z. B. `harper-cli lint datei.md`) und `harper-ls` (Language Server für VS Code). Es gibt **kein** Binary namens `harper`.
  - Harper **Desktop-App** (systemweite Prüfung in allen Apps): nur **macOS** (ab macOS 14), laut writewithharper.com/desktop "Windows und Linux: not yet". Unter Windows genügt die VS Code Extension + `harper-ls`.
  - macOS: `brew install harper` (oder native Desktop-App)
  - Linux: `brew install harper` oder `cargo install harper-ls --locked`
- **Pandoc** (Markdown -> .docx-Export):
  - Windows: `winget install --id JohnMacFarlane.Pandoc -e` → **Pandoc 3.14**
  - macOS/Linux: brew/apt bzw. pandoc.org
- **Zotero** (Literaturverwaltung, lokal):
  - Windows: `winget install --id DigitalScholar.Zotero -e` → **Zotero 10.0.8**
  - plus Erweiterung **Better BibTeX** und Zotero-Word-Plugin (GUI, siehe unten)

### VS Code Extensions

Installation per CLI (korrekte Marketplace-IDs):

```powershell
code --install-extension elijah-potter.harper                          # Harper - Grammar / Spell Checking
code --install-extension yzhang.markdown-all-in-one                     # Markdown All in One
code --install-extension notZaki.pandocciter                            # Pandoc Citer (Autovervollständigung @citation-keys)
code --install-extension streetsidesoftware.code-spell-checker          # Code Spell Checker
code --install-extension streetsidesoftware.code-spell-checker-german   # deutsches Wörterbuch
```

- **Harper** (`elijah-potter.harper`) — Spracheinstellung: **American English**; findet `harper-ls` automatisch über den PATH
- **Markdown All in One** — Überschriften, Inhaltsverzeichnis
- **Pandoc Citer** (`notZaki.pandocciter`) — Autovervollständigung der `@citation-keys` aus der .bib-Datei
- **Code Spell Checker** — zusätzlich für deutsche Texte (deutsches Wörterbuch als eigene Extension installiert)

### Zotero-Konfiguration

- APA-7-CSL-Datei einmalig aus dem Zotero Style Repository laden (apa.csl) und im Projekt ablegen (erledigt: `apa-7th.csl` im Template)
- Auto-Export der Sammlung als `references.bib` ins Projektverzeichnis mit „Halte aktuell"
- **Wichtig (2026-11-17, Zotero 10.0.8 + Better BibTeX 9.0.77):** BBT-Export bricht mit „Ein Fehler ist aufgetreten bei dem Versuch, die ausgewählte Datei zu exportieren" ab, **solange die Bibliothek leer ist** (unabhängig vom Zielpfad, auch nach Neustart und `extensions.zotero-better-bibtex.workersMax = 0`). **Ab dem ersten Eintrag funktioniert der BBT-Auto-Export einwandfrei** — verifiziert: `references.bib` wurde von BBT geschrieben und per pandoc korrekt als APA-7-Zitat gerendert. Fallback bleibt: normales Format „BibTeX" mit „Halte aktuell".
- Unterschied BibTeX vs. Better BibTeX beim Export: BibTeX nutzt die Zotero-nativen Citekeys (ab Zotero 8 im Eintrag sichtbar); Eigennamen in Titeln ggf. manuell klammern (`{United} {States}`), damit CSL sie nicht in sentence case umwandelt.

## Verzeichnisstruktur pro Hausarbeit (Vorschlag)

```
<kurs-arbeit>/
├── AGENT.md            # dieser Agenten-Kontext (kopieren oder verlinken)
├── references.bib      # Auto-Export aus Zotero (Better BibTeX)
├── apa-7th.csl         # APA-7-Zitierstil
├── src/
│   ├── 01-einleitung.md
│   ├── 02-hauptteil.md
│   └── 03-fazit.md     # Fließtext in Markdown, Zitate als [@key2024]
├── assets/             # Abbildungen, Tabellen
├── output/             # erzeugte .docx-Dateien (gitignored)
└── draft.md            # oder eine Gesamtdatei, je nach Präferenz
```

`.gitignore`: `output/`, `*.docx`, ggf. `*.bib` prüfen (Referenzen können versioniert werden).

## Workflow pro Hausarbeit

1. Neues Verzeichnis anlegen, `git init`, erste Commit-Message: `init: Projektstruktur <Kurs>`
2. Zotero-Sammlung anlegen, Auto-Export nach `references.bib` verifizieren
3. Fließtext in Markdown schreiben; Zitate als `[@key]`, Pandoc Citer vervollständigt
4. Harper-Korrekturen inline prüfen und bewusst übernehmen (nicht blind akzeptieren)
5. Export nach Word:
   ```
   pandoc src/*.md --citeproc --bibliography=references.bib --csl=apa-7th.csl -o output/hausarbeit.docx
   ```
6. Format-Feinschliff und APA-Titelseite in Word; Literaturverzeichnis wird automatisch generiert
7. Regelmäßig committen (z. B. nach jedem fertigen Abschnitt), Messages beschreiben den Fortschritt: `draft: Kapitel 2 Methodik`

## Konkrete Aufgaben für den Agenten (mit Vibe abarbeiten)

- [x] Setup prüfen: Harper, Pandoc, Zotero, alle Extensions installiert und funktionsfähig (2026-11-17: scoop v0.6.0, harper 3.2.0 mit harper-cli/harper-ls, pandoc 3.14, Zotero 10.0.8, 5 VS Code Extensions; harper-cli Funktionstest bestanden)
- [x] Harper auf American English konfigurieren; `harper-ls.toml` mit `dialect = "American"` im Template-Projekt abgelegt (2026-11-17, `Courses/hausarbeit-template/harper-ls.toml`)
- [x] APA-7-Formatvorlage erstellt (2026-11-17): `apa-reference.docx` (pandoc-Referenzdokument) — Times New Roman 12 pt ueberall, doppelter Zeilenabstand (line=480), Ueberschrift Level 1 zentriert; in `build.ps1`/`build.sh` via `--reference-doc=apa-reference.docx` eingebunden und im Export verifiziert. **Titelseite nach APA 7** (Titel, Autor, ERAU, Kurs, Dozent, Datum) bleibt manueller Schritt in Word nach dem Export — pandoc/docx erzeugt keine Titelseite.
- [x] Exportkommando als Skript bereitgestellt: `build.ps1` (Windows) und `build.sh` (macOS/Linux) inkl. `--citeproc` (2026-11-17, im Template)
- [x] `apa-7th.csl` besorgt (offizielles CSL-Repo, citation-style-language/styles, apa.csl = APA 7) und im Template abgelegt (2026-11-17)
- [x] Git-Repo mit der Struktur oben initialisiert: Template `Courses/hausarbeit-template/` mit `git init`, `.gitignore` (output/, *.docx), erstem Commit `init:` (2026-11-17). Pro Kursprojekt: Template kopieren, `git init` erneut ausführen.
- [x] Zotero-Auto-Export nach `references.bib` eingerichtet und verifiziert (2026-11-17) — mit **Better BibTeX** (Auto-Export „Halte aktuell"); End-to-End-Test bestanden: Zotero-Eintrag → `references.bib` → pandoc → docx mit korrektem APA-7-Zitat (`[@MistralStudio]` → „(Mistral Studio, n.d.)"). Hinweis: BBT-Export schlägt fehl, solange die Bibliothek **leer** ist — erst ab dem ersten Eintrag funktioniert er.
- [x] Testlauf: Beispieldokument mit APA-Zitat (Federal Aviation Administration, 2019) exportiert und geprüft (2026-11-17): `example/beispiel.md` + `example/test.bib` -> `output/beispiel-test.docx` enthält korrektes In-Text-Zitat `(Federal Aviation Administration, 2019)` und APA-7-Reference-List-Eintrag. Hinweis: Eigennamen im BibTeX-Titel einzeln klammern (`{United} {States}`), sonst wandelt CSL alles in sentence case um. End-to-End mit echten Zotero-Daten bestanden: `[@MistralStudio]` aus BBT-Auto-Export -> APA-7-Zitat im docx.
- [x] Für deutsche Arbeiten: Workflow dokumentiert (2026-11-17, siehe Abschnitt "Deutsche Texte" unten)

## Deutsche Texte

- Harper prüft **nur Englisch** — deutsche Passagen ignoriert Harper bzw. meldet sie als Fehler (siehe Test: „Einleitung" wurde als SpellCheck-Lint markiert). Deutsche Abschnitte daher nicht Harper überlassen.
- Stattdessen **Code Spell Checker** mit installiertem deutschen Wörterbuch (`streetsidesoftware.code-spell-checker-german`): Sprache in VS Code unten in der Statusleiste auf `de` stellen oder pro Datei `<!-- cspell:language de -->` im Kopf setzen;projektspezifisch in `.vscode/settings.json`: `"cSpell.language": "de,en"`.
- Finaler Check deutscher Passagen: **Duden Mentor** (regelbasiert, Cloud — laut Regel 2 erlaubt), Text kopieren, prüfen, Korrekturen manuell zurückübertragen.
- In gemischten Dokumenten: `<!-- cspell:ignore <wort> -->` bzw. Workspace-Dictionary `.harper-dictionary.txt` für englische Fachbegriffe, die Harper nicht kennen soll.

## Hinweise

- Harper prüft ausschließlich Englisch; deutsche Passagen über Code Spell Checker und (final, regelbasiert, Cloud) Duden Mentor.
- Harper Desktop (systemweit) gibt es nur für macOS; unter Windows/Linux läuft Harper über die VS Code Extension + `harper-ls` bzw. `harper-cli` auf der Kommandozeile.
- Nach scoop-Installation immer ein **neues Terminal** öffnen, damit die shims im PATH sind.
- Word bleibt Endstation für Abgabe und Betreuer-Feedback ("Änderungen nachverfolgen", Kommentare).
- Diese Datei bei jedem neuen Kursprojekt mitnehmen, damit der Agent den vollen Kontext hat.
