#!/usr/bin/env perl
# 
# MIT License
# 
# .latexmkrc
# 
# Copyright (c) 2020 冬ノ夜空
# 

# ---------------------------------------
# %O：実行時オプション
# %S：入力ファイル名
# %D：出力ファイル名
# %B：処理するファイル名の拡張子を除いた文字列
# ---------------------------------------

$latex            = 'platex   %O -no-guess-input-enc -kanji=utf8 -interaction=nonstopmode -synctex=1 %S';
$biber            = 'biber    %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex           = 'pbibtex  %O %B -kanji=utf8';
$makeindex        = 'upmendex %O -o %D %S';
$dvipdf           = 'dvipdfmx %O -o %D %S';

# $pdflatex       = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
# $lualatex       = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
# $xelatex        = 'xelatex  %O -no-pdf -synctex=1 -shell-escape -interaction=nonstopmode %S';

# [man: latexmk]
# If equal to 3, generate a pdf version of the document from the dvi file, 
# by using the command specified by the $dvipdf variable.
$pdf_mode         = 3;

# $pvc_view_file_via_temporary = 0;

# PDF Viewer
# if ($^O eq 'darwin') {
#   # for macOS
#   $pdf_previewer               = 'open -ga /Applications/Skim.app';
# } else {
#   # for Linux
#   $pdf_previewer               = 'xdg-open';
# }


