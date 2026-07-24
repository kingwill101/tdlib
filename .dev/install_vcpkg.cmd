@echo off
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set "PROJECT_DIR=%~dp0.."
set "VCPKG_ROOT=%USERPROFILE%\vcpkg"
set "VCPKG_TARGET_TRIPLET=x64-windows"
set "VCPKG_INSTALLED_DIR=%PROJECT_DIR%\.dart_tool\tdlib-cmake-cache\windows-x64\vcpkg_installed"

if not exist "%VCPKG_ROOT%\vcpkg.exe" (
    echo Bootstrapping vcpkg at %VCPKG_ROOT%...
    git clone --depth 1 https://github.com/microsoft/vcpkg.git "%VCPKG_ROOT%" || exit /b 1
    call "%VCPKG_ROOT%\bootstrap-vcpkg.bat" -disableMetrics || exit /b 1
) else (
    echo vcpkg already bootstrapped.
)

echo === Installing vcpkg dependencies (manifest mode) ===
cd /d "%PROJECT_DIR%"
"%VCPKG_ROOT%\vcpkg.exe" install --x-install-root "%VCPKG_INSTALLED_DIR%"
if errorlevel 1 exit /b 1

echo === vcpkg setup complete ===