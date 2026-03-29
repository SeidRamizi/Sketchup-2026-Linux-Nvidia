# 🏛️ SketchUp 2026 for Linux (NVIDIA & AMD Optimized)

[![Wine Support](https://img.shields.io/badge/Wine-Staging%2011.0+-red.svg)](https://www.winehq.org/)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue.svg)](https://en.wikipedia.org/wiki/Linux)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X7X51WU7K8)

---

## 📸 Showcase
![SketchUp 2026 running on Linux](screenshot.png)

---

## 📦 Download Links
🚀 **[Download UNIVERSAL Version (Recommended)](https://mega.nz/file/HgJmDSbY#h4JhUNr_zjbHcJtjzkULqVQag6_rz1v7QUQ3B4NvlD0)**  
🟢 **[Download NVIDIA ONLY Version (Legacy)](https://mega.nz/file/S04E0D4J#vAVYb51tAd5VKcoarW4MMDOejuEsA_1MF3NmL7R6kKY)**

---

## ⚠️ Prerequisites
- **Wine & Winetricks:** `sudo apt install wine winetricks -y` (Ubuntu/Mint)

---

## 📦 Installation Guide
1. **Extract** the ZIP.
2. **Run Installer:** `chmod +x install.sh && ./install.sh`
3. **Desktop Icon:** Copy `SketchUp.desktop` to `~/.local/share/applications/`

---

## 🛠️ GPU Specific Fixes
- **NVIDIA:** Pre-configured launcher.
- **AMD/Intel:** Native support. Use `DRI_PRIME=1` for Hybrid Laptops.

---

## 🔥 Quick Fix
If it hangs at Welcome Screen, run this inside the folder:
```bash
wineserver -k && WINEPREFIX=$HOME/.sketchup2026 wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\Common" /v "ShowWelcomeWindow" /t REG_DWORD /d 0 /f
```

---

## ☕ Support my work
If this project saved you time or helped your workflow, consider supporting me:

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/X7X51WU7K8)

## 🤝 Contact
**Seid Ramizi** - seid.cincin@gmail.com
