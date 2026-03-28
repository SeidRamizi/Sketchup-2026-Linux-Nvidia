#!/bin/bash
# Created by: Seid Ramizi (seid.cincin@gmail.com)

# SketchUp 2026 Linux Auto-Installer & Optimizer
# Built for the Linux Community

WINE_PREFIX_NAME=".sketchup2026"
WINE_PREFIX_PATH="$HOME/$WINE_PREFIX_NAME"

echo "-------------------------------------------------------"
echo "Starting SketchUp 2026 Environment Setup..."
echo "-------------------------------------------------------"

# 1. Initialize Prefix
echo "[1/5] Creating 64-bit Wine Prefix..."
WINEPREFIX=$WINE_PREFIX_PATH WINEARCH=win64 winecfg /v win10

# 2. Install Dependencies
echo "[2/5] Installing core libraries (this may take a few minutes)..."
WINEPREFIX=$WINE_PREFIX_PATH winetricks -q dotnet48 vcrun2022 corefonts mfc140 riched20 msxml6 gdiplus d3dcompiler_47 dxvk vkd3d

# 3. Registry Optimizations
echo "[3/5] Optimizing Registry for NVIDIA and High Performance..."
WINEPREFIX=$WINE_PREFIX_PATH wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\GLConfig\Display" /v "UseNewGraphicsEngine" /t REG_DWORD /d 0 /f
WINEPREFIX=$WINE_PREFIX_PATH wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\GLConfig\Display" /v "MultiSample" /t REG_DWORD /d 4 /f
WINEPREFIX=$WINE_PREFIX_PATH wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\GLConfig\Display" /v "UseMaxTextureSize" /t REG_DWORD /d 1 /f
WINEPREFIX=$WINE_PREFIX_PATH wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\GLConfig\Display" /v "CapabilitiesCheckPassed" /t REG_DWORD /d 1 /f
WINEPREFIX=$WINE_PREFIX_PATH wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\Snappy\Toolbars" /v "MainWindowMaximized" /t REG_DWORD /d 1 /f

# 4. Install Main Application
if [ -f "SketchUp2026.msi" ]; then
    echo "[4/5] Installing SketchUp via MSI..."
    WINEPREFIX=$WINE_PREFIX_PATH msiexec /i "SketchUp2026.msi" /qb
else
    echo "Error: SketchUp2026.msi not found in this folder!"
fi

# 5. Apply Activation/Crack
if [ -d "crack" ]; then
    echo "[5/5] Applying activation files..."
    cp crack/SketchUp.exe "$WINE_PREFIX_PATH/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/SketchUp/SketchUp.exe"
    cp crack/LayOut.exe "$WINE_PREFIX_PATH/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/LayOut/LayOut.exe" 2>/dev/null || true
fi

echo "-------------------------------------------------------"
echo "Installation Complete! You can now launch SketchUp."
echo "-------------------------------------------------------"
