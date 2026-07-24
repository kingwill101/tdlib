@echo off
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set "PROJECT_DIR=%~dp0.."
set "TOOLS_DIR=%PROJECT_DIR%\tools"
set "VCPKG_ROOT=%USERPROFILE%\vcpkg"
set "VCPKG_TARGET_TRIPLET=x64-windows"
set "VCPKG_INSTALLED_DIR=%VCPKG_ROOT%\installed"
set "PATH=%TOOLS_DIR%;%VCPKG_ROOT%;C:\tools\dart-sdk\bin;C:\Program Files\CMake\bin;C:\ProgramData\chocolatey\bin;%PATH%"

echo === Checking tools ===

if not exist "%TOOLS_DIR%\gperf.exe" (
    echo Downloading gperf...
    if not exist "%TOOLS_DIR%" mkdir "%TOOLS_DIR%"
    powershell -NoProfile -Command "$tmp=\"$env:TEMP\gperf\"; New-Item -ItemType Directory -Force -Path $tmp ^| Out-Null; $zip=\"$tmp\gperf-bin.zip\"; [Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; (New-Object System.Net.WebClient).DownloadFile('https://sourceforge.net/projects/gnuwin32/files/gperf/3.0.1/gperf-3.0.1-bin.zip/download',$zip); Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory($zip,\"$tmp\extracted\"); Copy-Item \"$tmp\extracted\bin\gperf.exe\" \"%TOOLS_DIR%\gperf.exe\" -Force" || exit /b 1
)

if not exist "%VCPKG_ROOT%\vcpkg.exe" (
    echo Bootstrapping vcpkg at %VCPKG_ROOT%...
    git clone --depth 1 https://github.com/microsoft/vcpkg.git "%VCPKG_ROOT%" || exit /b 1
    call "%VCPKG_ROOT%\bootstrap-vcpkg.bat" -disableMetrics || exit /b 1
)

echo === Installing vcpkg dependencies (manifest mode) ===
cd /d "%PROJECT_DIR%"
if not exist "%VCPKG_ROOT%\installed\x64-windows\include\zlib.h" (
    "%VCPKG_ROOT%\vcpkg.exe" install || exit /b 1
) else (
    echo vcpkg dependencies already installed.
)

echo === Running prebuild ===
cd /d "%PROJECT_DIR%"
C:\tools\dart-sdk\bin\dart.exe run tool\preseed_hooks.dart --target-os windows --target-arch x64 --build-from-source
if errorlevel 1 exit /b 1

echo === Build complete ===