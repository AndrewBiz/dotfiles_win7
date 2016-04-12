@echo off
SETLOCAL ENABLEEXTENSIONS

set srcdir=%cd%
set bindir=%srcdir%\_build

cmake --build %bindir%


