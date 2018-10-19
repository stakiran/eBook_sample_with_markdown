@echo off

rem 本バッチファイルを実行すると run.md が解析され、
rem 見出しのみ抜粋した文字列が _toc.md に出力されます。
rem 
rem しかし筆者環境ではないと動きません。
rem これはあくまで目次生成を自動化する例として同梱しているものです。

setlocal
set curdir=%~dp0
set outfilepath=%curdir%_toc.md

set inputfilename=run.md
set parse_nest_level=1

python ..\intoc\intoc.py -i %curdir%%inputfilename% --parse-depth %parse_nest_level% > %outfilepath% --use-plain-enum
start "" %outfilepath%
