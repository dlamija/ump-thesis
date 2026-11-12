# Perbandingan: UMP Thesis Guide Nov 2019 vs `umpthesis.cls` (v0.7 2017/08/01)

Disemak: `UMP THESIS GUIDE NOV 2019.pdf` (2019) lawan `umpthesis.cls` (974 baris, berdasarkan guide 2017 + template v1.dotx).
Projek disemak: `/Users/dlamija/Sandbox/New Proposal 2018` (compile semula `UMP Proposal 2018.tex`: 44 muka surat, exit 0).

## A) Bahagian yang BERCANGGAH (guide 2019 vs class)

1. **Saiz & warna huruf kulit depan** — Guide §2.4.1: TNR **20 pt**, huruf besar **emas**, tidak bold. Class `\umpCoverPage` guna `\fontsize{18pt}{24pt}` (baris 232), tiada warna emas. ❗ 18pt vs 20pt.

2. **Jarak baris halaman tajuk (Title Page)** — Guide §3.2.2: guna **single spacing**. Class `\maketitle` guna `\onehalfspacing` (baris 633).

3. **Nombor muka surat hilang pada muka pertama setiap bab** — Guide §2.6/§2.7: hanya muka pertama **preliminaries** yang nombornya tidak dicetak; muka surat teks mesti ada nombor. Class `\aliaspagestyle{chapter}{empty}` (baris 901) masih aktif → muka pertama CHAPTER tiada nombor halaman (disahkan dalam PDF output).

4. **Nombor halaman bab dalam Table of Contents** — Guide §3.2.6 + Appendix J: entri bab ada nombor halaman (`CHAPTER 1 INTRODUCTION 11`). Class `\cftinsertcode{ChapterTOC}` (baris 188–191) mengosongkan `\cftchapterformatpnum` → entri bab tiada nombor halaman (disahkan dalam PDF).

5. **Jarak tajuk bab** — Guide Table 2.2: jarak nombor bab → tajuk dan tajuk → baris pertama teks = **1.5 spacing**. Class guna `\midchapskip{4\onelineskip}` (baris 892) dan `\afterchapskip{\onelineskip}` (baris 891). ❗ Tidak ikut 1.5.

6. **Spacing senarai (TOC/LOF/LOT)** — Guide Table 2.2: senarai jadual/rajah/simbol/singkatan guna **1.5-line spacing**. Class TOC guna `\linespread{1.3}` (baris 823), LOF `\linespread{1.3}` (baris 871), LOT ikut default.

7. **Jarak antara perenggan** — Guide Table 2.2: 1.5-line spacing. Class guna `\parskip{1em}` (baris 183) = ±1 baris, bukan 1.5.

8. **Teks deklarasi penyelia** — Guide Appendix C: "I/We* hereby declare that I/We* have checked this **thesis/project*** …". Class `\umpSvDeclaration` (baris 514–518) guna "I hereby declare that I have checked this thesis…" — tiada opsyen I/We dan tiada "project".

9. **Ayat tujuan penyerahan (coursework)** — Guide Appendix E: PhD/Master by Research = "in **fulfilment**", Master by Coursework = "in **partial fulfilment**", Bachelor = "Report submitted in partial fulfilment…". Class `\maketitle` (baris 638–640) sentiasa "Thesis submitted **in fulfilment**…" — tiada varian coursework/FYP.

10. **Typo hak milik dalam borang deklarasi** — Guide Appendix C: "The Thesis is the Property of **Universiti** Malaysia Pahang". Class `\umpCopyright` baris 357: "The Thesis is the Property of **University** Malaysia Pahang".

11. **Margin default class** — Guide Table 2.3: atas 25 mm, kanan 25 mm, **kiri 35 mm**, bawah 25 mm. Class **tidak** set margin (hanya `\RequirePackage[a4paper]{geometry}`, baris 77); default diukur = kiri/kanan ±31.5 mm, atas ±35.6 mm, bawah ±53.5 mm. *Nota: `UMP Proposal 2018.tex` (baris 13–21) sudah set margin betul, jadi PDF semasa OK — class sahaja yang rapuh.*

12. **Gaya rujukan** — Guide Bab 4 = APA 6th. Class ada TODO "UMP Biblio format" (baris 42) belum siap; proposal guna `\bibliographystyle{plainnat}` (bukan APA).

13. **Heading Level 5** — Guide Table 3.5: Level 5 = **tidak bernombor, italic, Title Case**. Class `\theparagraph` roman (baris 922) + `\setparaheadstyle{\normalsize\bfseries}` (baris 923) → Level 5 bernombor roman + bold, bukan italic tanpa nombor.

## B) Item BAHARU dalam guide 2019 yang TIADA dalam class

1. **Spine tesis** — §2.4.2 + Appendix B (nama, ijazah singkatan, tahun, UMP; TNR 18 emas). Class tiada command spine.
2. **Margin landskap (A4 Landscape)** — Table 2.4 (atas 35, kiri 25, kanan 25, bawah 25). Class tiada setup landskap.
3. **List of Abbreviations/Symbols/Formula** — §3.2.9 + Appendices M & N. Class tiada command; `\listofsymbols`/`\listofabbre` dalam fail utama pun dikomen kerana command itu tidak wujud.
4. **List of Appendices** — Table 3.1 & §3.7. Tiada dalam class.
5. **List of Publications** — §3.8. Tiada dalam class.
6. **Template rujukan baru** — Guide 2019 pakai **UMP Thesis Template v2.dotx**; class berdasarkan **v1.dotx**.
7. **Borang status deklarasi rasmi** — §3.2.1 suruh muat turun dari laman IPS; class melukis sendiri borang (mungkin tak sepadan borang 2019).
8. **Bab APA penuh** (Bab 4) — tiada sokongan automatik dalam class.

## C) Nota tambahan

- Class **masih boleh compile** (44 halaman, exit 0), tetapi ada warning memoir: `\patchcommand` dan `\addtodef` sudah *deprecated* (log baris 83 & 203) — patut dimodenkan.
- `\umpCopyright{0}{0}{1}` dipanggil **sebelum** `\frontmatter` → borang deklarasi tidak dikira muka surat; sepadan dengan guide ("neither numbered nor counted"). ✔
- TOC semasa tiada entri `DECLARATION` sebab `\umpSvDeclaration` dikomen dalam fail utama; jika diaktifkan ia masukkan entri "DECLARATION" tanpa nombor halaman — semak semula dengan Appendix J.
- Jumpaan sampingan (bukan class): `tex/literature.tex` baris 12 ada heading tinggalan templat `\noindent \textbf{A) Your conceptual framework}`; sumber rajah ditulis `Source Blunden [2012]` sedangkan guide mahu `Source: Author (Year).`

## Prioriti patch

1. Buang `\aliaspagestyle{chapter}{empty}`.
2. Kembalikan nombor halaman bab dalam TOC.
3. Cover → 20pt (dan warna emas untuk cetakan).
4. Title page → `\singlespacing`.
5. Masukkan margin terus ke class (Table 2.3 + Table 2.4 landscape).
6. Tambah command List of Symbols/Abbreviations/Formula + Spine.
7. Tukar gaya bibliografi ke APA (atau sediakan `.bst` APA).
