# Panduan Format PSM UMP (LaTeX) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Produce an English guideline document (LaTeX + PDF) that merges the UMP Thesis Guide Nov 2019 formatting rules with the PSM content outline, and explains how to use `umpthesis.cls`.

**Architecture:** A new main file `Panduan-Format-PSM-UMP.tex` mirrors the front-matter flow of `UMP Proposal 2018.tex` (`\umpCoverPage` → `\frontmatter` → `\maketitle` → abstracts → TOC/LOT → `\mainmatter` → chapters → bibliography). Chapter content is split into `tex/panduan-*.tex` files. The existing `umpthesis.cls` is used unmodified.

**Tech Stack:** pdfLaTeX, `umpthesis.cls` (memoir-based), `natbib` + `plainnat`, `booktabs`, `tabularx`.

**Spec:** Design agreed in chat on 2026-11-11: English, practical-condensed scope, chapters = Introduction, Formatting Specs (guide 2019 + LaTeX notes), PSM Content Outline (PSM docx cleaned), Using the LaTeX Class, Checklist & Known Issues.

## Global Constraints

- Language: English (technical terms kept as-is).
- Do NOT modify `umpthesis.cls` or existing proposal files.
- New files live in `/Users/dlamija/Sandbox/New Proposal 2018`.
- Use `\documentclass[english]{umpthesis}` and set geometry in the main file: `top=25mm,right=25mm,left=35mm,bottom=25mm,includefoot`.
- All content reflects the two sources: UMP Thesis Guide Nov 2019 and GUIDELINES FOR PSM.docx.
- Known class-vs-guide mismatches are documented, not silently fixed.

## Review Focus

- No undefined citations/references after full compile (grep `undefined` in log returns none).
- PDF must compile with exit 0 through pdflatex → bibtex → pdflatex ×2.
- TOC/LOT populated and captions rendered (tables use `\caption` inside `table` floats).
- No Unicode box-drawing characters inside `verbatim` (use ASCII).
- Front matter commands (`\umpCoverPage`, `\maketitle`, `abstract`, `abstrak`) run without error.

---

### Task 1: Plan + main file skeleton

**Files:**
- Create: `docs/superpowers/plans/2026-11-11-panduan-format-psm-ump.md`
- Create: `Panduan-Format-PSM-UMP.tex`

- [ ] Write this plan file.
- [ ] Write main file with preamble, geometry, author/school profile, front matter sequence, `\input` chapters, bibliography.
- [ ] Save both files.

### Task 2: Chapter content files

**Files:**
- Create: `tex/panduan-abstrak.tex`, `tex/panduan-abstract.tex`
- Create: `tex/panduan-intro.tex`, `tex/panduan-format.tex`
- Create: `tex/panduan-isi-psm.tex`, `tex/panduan-latex.tex`, `tex/panduan-checklist.tex`

- [ ] Write Malay ABSTRAK (short, single paragraph).
- [ ] Write English ABSTRACT (short, single paragraph).
- [ ] Write Chapter 1: Introduction & definitions (from guide 2019 ch.1).
- [ ] Write Chapter 2: Formatting specs with tables + LaTeX notes (guide 2019 ch.2-3).
- [ ] Write Chapter 3: PSM content outline, cleaned (from PSM docx).
- [ ] Write Chapter 4: How to use `umpthesis.cls` with verbatim snippets.
- [ ] Write Chapter 5: Checklist + known issues/workarounds.

### Task 3: Bibliography

**Files:**
- Create: `bib/panduan.bib`

- [ ] Add entries: UMP Thesis Guide 2019, Guidelines for PSM, APA 6th manual, `umpthesis.cls`.
- [ ] Cite them with `\citep`/`\citet` in chapters.

### Task 4: Compile and verify

- [ ] Run `pdflatex -interaction=nonstopmode -halt-on-error Panduan-Format-PSM-UMP.tex`.
- [ ] Run `bibtex Panduan-Format-PSM-UMP`.
- [ ] Run pdflatex twice more.
- [ ] Verify exit 0 on all runs and `grep -c undefined Panduan-Format-PSM-UMP.log` = 0.
- [ ] Check PDF page count and that TOC/LOT render.
- [ ] Clean generated aux files, keep `.tex` sources and `.pdf`.
