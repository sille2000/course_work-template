# Git-Cheatsheet (für Hausarbeiten)

**Grundprinzip:** Jeder `commit` ist ein Snapshot deiner Arbeit mit Zeitstempel — das ist dein Nachweis eigenständiger Autorenschaft (wichtig bei KI-Erkennung). Es gibt nur einen Branch (`main`), du arbeitest direkt darauf.

## Die Befehle, die du wirklich brauchst

```powershell
# Einmalig pro Projekt (nach dem Kopieren des Templates):
git init                      # legt das Repository an

# Im Alltag, nach jedem fertigen Abschnitt:
git status                    # Überblick: welche Dateien geändert?
git diff                      # genaue Änderungen seit dem letzten Commit anzeigen

git add -A                    # ALLE Änderungen vormerken
git add src/02-hauptteil.md   # oder nur eine Datei vormerken

git commit -m "draft: Kapitel 2 Methodik"   # Snapshot speichern

# Commit-Message-Präfixe:
#   init:   Projekt-Setup
#   draft:  Text geschrieben/erweitert
#   fix:    Fehler korrigiert (Harper/cSpell)
#   apa:    Zitate, Format, Titelseite angepasst
#   export: Word-Export geprüft

# Historie ansehen:
git log --oneline             # eine Zeile pro Commit (id + message + Zeit)

# Meilensteine markieren:
git tag v0.1-erstentwurf      # Tag setzen
git tag                       # alle Tags anzeigen
```

## Letzten Commit nachbessern (nur lokal, noch nichts gepusht)

```powershell
git add -A                              # vergessene Datei nachtragen
git commit --amend --no-edit            # in den letzten Commit übernehmen
# oder Message ändern:
git commit --amend -m "draft: Kapitel 2 (korrigiert)"
```

## Typische Session

```powershell
cd "D:\Embry-Riddle Aeronautical University\Courses\<kurs>-<titel>"
git status                                   # was ist offen?
# ... in VS Code src/02-hauptteil.md bearbeitet ...
git add -A
git commit -m "draft: Kapitel 2 Methodik"
git log --oneline                            # Historie checken
```

## Warnungen

- `git restore <datei>` / `git checkout -- <datei>` **verwerfen Änderungen endgültig** — nur benutzen, wenn du sicher bist.
- `git reset --hard` löscht Commits — **nicht benutzen**.
- Es gibt kein Remote (kein Push) — alles bleibt lokal auf deinem Gerät. Das ist so gewollt (Datenschutz-Regel in AGENT.md).

## Wann committen?

Nach jedem fertigen Abschnitt, mindestens aber 1× pro Arbeitssession. Lieber öfter — Commits sind billig, verlorene Arbeit nicht.
