@echo off

rem �{�o�b�`�t�@�C�������s����� run.md ����͂���A
rem ���o���̂ݔ������������� _toc.md �ɏo�͂���܂��B
rem 
rem �������M�Ҋ��ł͂Ȃ��Ɠ����܂���B
rem ����͂����܂Ŗڎ������������������Ƃ��ē������Ă�����̂ł��B

setlocal
set curdir=%~dp0
set outfilepath=%curdir%_toc.md

set inputfilename=run.md
set parse_nest_level=1

python ..\intoc\intoc.py -i %curdir%%inputfilename% --parse-depth %parse_nest_level% > %outfilepath% --use-plain-enum
start "" %outfilepath%
