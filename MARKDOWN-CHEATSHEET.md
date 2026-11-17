# Markdown-Cheatsheet (für diese Schreibumgebung)

Alles in `src/*.md` ist Markdown. Beim Export (`build.ps1`) wird daraus Word (.docx).

## Überschriften (Reihenfolge = Dateinamen 01-, 02-, … in src/)

```markdown
# Kapitel        -> Word Heading 1 (zentriert, fett — APA)
## Abschnitt    -> Word Heading 2
### Unterpunkt  -> Word Heading 3
```

Pro Datei genau **ein** `#` am Anfang.

## Text-Betonung

```markdown
*kursiv* oder _kursiv_
**fett** oder __fett__
***fett kursiv***
~~durchgestrichen~~
`Code` (online-Schriftart im Word)
```

## Listen

```markdown
- Aufzählungspunkt
- zweiter Punkt
  - eingerückt (2 Leerzeichen)

1. nummerierte Liste
2. zweiter Punkt
```

## Zitate (Pandoc Citer — das Wichtigste hier)

```markdown
[@MistralStudio]              -> In-Text-Zitat (Mistral Studio, n.d.)
[@Installation; @MistralStudio]  -> mehrere Quellen
[see @Installation, p. 12]    -> mit Seitenzahl/Präfix
```

 Beim Tippen von `[@` schlägt Pandoc Citer die Keys aus `references.bib` vor.
 Nie `[@citekey]` stehen lassen — pandoc warnt sonst „citation not found".

## YAML-Header (am Anfang jeder src-Datei — schon drin)

```yaml
---
bibliography: references.bib
---
```

## Links, Bilder, Tabellen

```markdown
[ERAU Library](https://guides.erau.edu/citestyle)
![Abbildung](assets/bild.png)        -> Bild aus assets/ ins Word

| Spalte A | Spalte B |
|----------|----------|
| Zelle 1  | Zelle 2  |
```

## Sonstiges

```markdown
---          -> horizontale Linie / Seitenumbruch-Vorlage
> Zitatblock (eingerückt)
```

## Was du NICHT brauchst

Keine Word-Formatierung in Markdown einbauen (keine manuellen Schriftarten/Abstände) —
das übernimmt `apa-reference.docx` beim Export (Times New Roman 12, doppelte Zeilenabstände).
