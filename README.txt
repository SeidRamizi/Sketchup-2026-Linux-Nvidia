SKETCHUP 2026 LINUX INSTALLATION GUIDE
--------------------------------------

This package contains everything you need to run SketchUp 2026 on Linux 
(Ubuntu, Fedora, Arch, etc.) with optimized NVIDIA performance.

PREREQUISITES:
- Wine (Staging recommended)
- Winetricks installed
- NVIDIA Drivers (for GPU acceleration)

STEPS:
1. Open a terminal inside this folder.
2. Grant execution permission to the script:
   chmod +x install.sh
3. Run the installer:
   ./install.sh

THE SCRIPT AUTOMATICALLY:
- Configures a dedicated Wine Prefix (~/.sketchup2026)
- Installs .NET 4.8, VC++ Redistributables, DXVK, and VKD3D
- Forces High-Quality Graphics settings (Anti-Aliasing 4x)
- Bypasses common installation errors found in standard installers

POST-INSTALLATION:
- Copy 'SketchUp.desktop' to your Desktop or ~/.local/share/applications/ 
  to see it in your App Menu.
- The launcher is pre-configured to use NVIDIA GPU offloading.

Enjoy modeling on Linux!

CONTACT & SUPPORT:
------------------
If you have questions or need help with this package, contact:
Seid Ramizi: seid.cincin@gmail.com
