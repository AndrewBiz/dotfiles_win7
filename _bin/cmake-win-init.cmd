@echo off
SETLOCAL ENABLEEXTENSIONS

set srcdir=%cd%
set bindir=%srcdir%\_build
rem set bindir=g:\_build


rem gcc and g++ compilers location
for /F "tokens=*" %%a in ('where gcc.exe') do @set c=%%a
for /F "tokens=*" %%a in ('where g++.exe') do @set cpp=%%a

echo.   
echo *************************************************************************
echo Initiating cmake build tree Andrey Bizyaev (c)
echo working (source) dir: %srcdir%
echo working (bin) dir: %bindir%
echo C compiler location: %c%
echo C++ compiler location: %cpp%
echo *************************************************************************

if not exist %bindir% (
    mkdir %bindir%
)

cd %bindir%

cmake -G "MinGW Makefiles" -D CMAKE_C_COMPILER=gcc -D CMAKE_CXX_COMPILER=g++ %srcdir%

cd ..
echo *************************************************************************

