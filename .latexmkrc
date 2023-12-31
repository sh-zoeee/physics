#!/usr/bin/env perl
# LaTeX
$latex = 'platex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;
# BibTeX
$bibtex = 'pbibtex %O %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
# index
$makeindex = 'mendex %O -o %D %S';
# DVI / PDF
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;
# PDF ビュアーの設定 for Windows
# Windows では SyncTeX が利用できる SumatraPDF が推奨されている。
$pdf_previewer = '"C:/Users/shant/AppData/Local/SumatraPDF/SumatraPDF.exe" -reuse-instance';

# clean up
$clean_full_ext = "%R.synctex.gz"