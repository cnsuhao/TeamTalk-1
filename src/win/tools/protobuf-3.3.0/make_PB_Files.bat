@ECHO off
SETLOCAL enabledelayedexpansion
cls
COLOR 1f

ECHO.
ECHO.
ECHO   ##############################################################
ECHO   #               »¶Ó­Ê¹ÓÃ TeamTalk ¹¤³ÌÅäÖÃÏòµ¼               #
ECHO   #                   version 1.0                              #
ECHO   ##############################################################
ECHO.
ECHO.

rem ¿½±´PBÐ­ÒéÎÄ¼þ
echo make IM protocol buffer files...
cd %~dp0
mkdir %~dp0\..\..\include\ProtocolBuffer
echo Copy IM protocol buffer files finished
rem Éú³ÉPBÐ­ÒéµÄC++°æ±¾
cd %~dp0\..\..\..\pb\
protoc.exe --cpp_out=%~dp0\..\..\include\ProtocolBuffer *.proto
echo make the pb files of c++ version has finished.
pause