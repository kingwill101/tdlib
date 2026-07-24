@echo off
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set "PROJECT_DIR=%~dp0.."
set "TOOLS_DIR=%PROJECT_DIR%\tools"
set "VCPKG_ROOT=%USERPROFILE%\vcpkg"
set "VCPKG_TARGET_TRIPLET=x64-windows"
set "VCPKG_INSTALLED_DIR=%VCPKG_ROOT%\installed"
set "PATH=%TOOLS_DIR%;%VCPKG_ROOT%;C:\tools\dart-sdk\bin;C:\Program Files\CMake\bin;C:\ProgramData\chocolatey\bin;%PATH%"

echo VCPKG_ROOT=%VCPKG_ROOT%
echo VCPKG_TARGET_TRIPLET=%VCPKG_TARGET_TRIPLET%
echo VCPKG_INSTALLED_DIR=%VCPKG_INSTALLED_DIR%
echo PROJECT_DIR=%PROJECT_DIR%
echo TOOLS_DIR=%TOOLS_DIR%
echo.

echo === Checking tools ===

if not exist "%TOOLS_DIR%\gperf.exe" (
    echo Downloading gperf...
    if not exist "%TOOLS_DIR%" mkdir "%TOOLS_DIR%"
    powershell -NoProfile -Command "$tmp=\"$env:TEMP\gperf\"; New-Item -ItemType Directory -Force -Path $tmp | Out-Null; $zip=\"$tmp\gperf-bin.zip\"; [Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12; (New-Object System.Net.WebClient).DownloadFile('https://sourceforge.net/projects/gnuwin32/files/gperf/3.0.1/gperf-3.0.1-bin.zip/download',$zip); Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory($zip,\"$tmp\extracted\"); Copy-Item \"$tmp\extracted\bin\gperf.exe\" \"%TOOLS_DIR%\gperf.exe\" -Force" || exit /b 1
) else (
    echo gperf already installed.
)

if not exist "%VCPKG_ROOT%\vcpkg.exe" (
    echo Bootstrapping vcpkg at %VCPKG_ROOT%...
    git clone --depth 1 https://github.com/microsoft/vcpkg.git "%VCPKG_ROOT%" || exit /b 1
    call "%VCPKG_ROOT%\bootstrap-vcpkg.bat" -disableMetrics || exit /b 1
) else (
    echo vcpkg found.
)

echo === Installing vcpkg dependencies (manifest mode) ===
cd /d "%PROJECT_DIR%"
if not exist "%VCPKG_ROOT%\installed\x64-windows\include\zlib.h" (
    "%VCPKG_ROOT%\vcpkg.exe" install || exit /b 1
) else (
    echo vcpkg dependencies already installed.
)

echo === Cloning TDLib source ===
set "SOURCE_CACHE=%PROJECT_DIR%\.dart_tool\tdlib-cmake-cache\tdlib-src"
if not exist "%SOURCE_CACHE%\.git" (
    git clone --depth 1 https://github.com/tdlib/td.git "%SOURCE_CACHE%" || exit /b 1
) else (
    echo TDLib source already cloned.
)

echo === Configuring TDLib with CMake using vcpkg toolchain ===
set "BUILD_DIR=%PROJECT_DIR%\.dart_tool\tdlib-cmake-cache\windows-x64\build"
cmake -S "%SOURCE_CACHE%" -B "%BUILD_DIR%" ^
    -G Ninja ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_TOOLCHAIN_FILE="%VCPKG_ROOT%/scripts/buildsystems/vcpkg.cmake" ^
    -DVCPKG_TARGET_TRIPLET=%VCPKG_TARGET_TRIPLET% ^
    -DVCPKG_INSTALLED_DIR="%VCPKG_INSTALLED_DIR%" ^
    -DGPERF_EXECUTABLE="%TOOLS_DIR%\gperf.exe" ^
    || exit /b 1

echo === Building TDLib target tdjson ===
cmake --build "%BUILD_DIR%" --target tdjson --parallel || exit /b 1

echo === Copying output for hook ===
set "HOOK_OUTPUT=%PROJECT_DIR%\.dart_tool\hooks_runner\shared\tdlib\"
xcopy /y "%BUILD_DIR%\lib\tdjson.dll" "%HOOK_OUTPUT%" || echo Warning: tdjson.dll not found at expected location
xcopy /y "%BUILD_DIR%\lib\tdjson.lib" "%HOOK_OUTPUT%" || echo Warning: tdjson.lib not found

echo === Build complete ===