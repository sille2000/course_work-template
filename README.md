# README — Schreibumgebung für Hausarbeiten (ERAU, APA 7)

Lokale, kostenlose Schreibumgebung: Markdown in VS Code → Word (.docx) mit APA-7-Zitaten.
Grammatikprüfung lokal & regelbasiert (Harper), Literaturverwaltung lokal (Zotero), alles versioniert (Git).
Details und Regeln siehe `AGENT.md` im selben Ordner.

---

## 1. Voraussetzungen (einmalig, schon erledigt)

- scoop + Harper (`harper-cli`, `harper-ls`), Pandoc, Zotero + Better BibTeX
- VS Code Extensions: `elijah-potter.harper`, `yzhang.markdown-all-in-one`, `notZaki.pandocciter`, `streetsidesoftware.code-spell-checker` (+ `-german`)
- VS Code nach der Installation **neu starten**, damit `harper-ls` gefunden wird

## 2. Neues Projekt starten (pro Hausarbeit)

```powershell
# Template kopieren (Pfade anpassen!)
Copy-Item -Recurse "D:\Embry-Riddle Aeronautical University\Courses\course_work-template" "D:\Embry-Riddle Aeronautical University\Courses\<kurs>-<titel>"

# In das neue Projekt wechseln und Git-Repo anlegen
cd "D:\Embry-Riddle Aeronautical University\Courses\<kurs>-<titel>"
git init

# Zotero: Sammlung anlegen + Auto-Export (Better BibTeX, "Halte aktuell") auf references.bib richten
# (erst ab dem ersten Eintrag in der Sammlung funktioniert der BBT-Export!)

# Erster Commit
git add -A
git commit -m "init: Projektstruktur <kurs>-<titel>"
```

## 3. Täglicher Workflow

| Schritt | Was | Wie |
|---|---|---|
| Quellen | In Zotero erfassen | Better BibTeX schreibt `references.bib` automatisch neu |
| Schreiben | `src/01-einleitung.md`, `02-hauptteil.md`, `03-fazit.md` | YAML-Header mit `bibliography: references.bib` ist schon drin |
| Zitieren | `[@` tippen | Pandoc Citer schlägt Keys aus `references.bib` vor |
| Grammatik | Harper unterstreicht inline | American English (harper-ls.toml); Korrekturen bewusst anklicken |
| Deutsch | cSpell auf `de` (Statusleiste), final Duden Mentor | Harper prüft nur Englisch |
| Export | `.\build.ps1` im Projektordner | erzeugt `output/hausarbeit.docx` (APA-Format + Literaturverzeichnis automatisch) |
| Word | Titelseite + Seitenzahl ergänzen | siehe Abschnitt 5 |

## 4. Versionieren mit Git

Nach jedem fertigen Abschnitt: `git add -A` und `git commit -m "draft: …"`.
Alle Git-Befehle mit Erklärungen stehen in **`GIT-CHEATSHEET.md`**.
Die Commit-Historie mit Zeitstempeln ist dein Nachweis eigenständiger Arbeit — lieber öfter committen.

## 5. Export nach Word + Feinschliff

```powershell
.\build.ps1     # baut src/*.md -> output/hausarbeit.docx
```

In Word danach nur noch:
1. **Seitenzahl oben rechts** (Einfügen → Kopfzeile → Seitenzahl, rechtsbündig)
2. **APA-7-Titelseite** auf Seite 1, zentriert, obere Seitenhälfte: Titel (fett), dein Name, ERAU + Kurs + Kursnummer, Dozent, Datum — alles Times New Roman 12, doppelte Zeilenabstände (kommt schon aus dem Export)
3. „Änderungen nachverfolgen" aktivieren → abgeben

Das **Literaturverzeichnis** und die **In-Text-Zitate** sind schon APA-7-konform im docx.

## 6. Checkliste vor Abgabe

- [ ] `git status` leer (alles committet) — letzter Commit beschreibt den Abgabestand
- [ ] `output/hausarbeit.docx` frisch gebaut (`build.ps1` ohne Fehler/Warnungen)
- [ ] Im docx: In-Text-Zitate zeigen `(Autor, Jahr)`, keine `(citekey?)`-Platzhalter
- [ ] Literaturverzeichnis hinten vollständig, alphabetisch, APA 7
- [ ] Titelseite + Seitenzahl in Word ergänzt
- [ ] Tag gesetzt, z. B. `git tag v1.0-abgabe`

## 7. Troubleshooting

| Problem | Lösung |
|---|---|
| Harper zeigt nichts in VS Code | VS Code **komplett neu starten** (PATH!), dann `Strg+Shift+P` → „Harper: Restart Language Server"; ggf. `harper.path` = `C:\Users\tsili\scoop\shims\harper-ls.exe` in Settings |
| Pandoc Citer schlägt keine `[@`-Keys vor | YAML-Header `bibliography: references.bib` in der md-Datei prüfen, dann „Developer: Reload Window" |
| Zotero: „Fehler beim Export" | BBT exportiert nicht bei **leerer** Bibliothek — erst ab erstem Eintrag; sonst Format „BibTeX" als Fallback |
| pandoc: „citation xyz not found" | Key existiert nicht in `references.bib` — in Zotero prüfen, Auto-Export aktiv? |
| pandoc: Glob-Fehler `src/*.md` | in PowerShell immer `build.ps1` nutzen (löst Dateien selbst auf) |
