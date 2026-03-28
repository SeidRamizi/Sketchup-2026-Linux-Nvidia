# 🏛️ SketchUp 2026 for Linux (NVIDIA Optimized)

---

## 📸 Showcase
![SketchUp 2026 running on Fedora Linux with NVIDIA GTX 1060](screenshot.png)

---

## ⚠️ Prerequisites (MUST INSTALL FIRST)
Before running the script, make sure you have **Wine** and **Winetricks** installed:

### For Ubuntu / Linux Mint / Pop!_OS:
```bash
sudo apt update && sudo apt install wine winetricks -y
```

---

## 📦 Installation Guide
1. **Download the Package:** [Mega.nz Link](https://mega.nz/file/uoxnFbgC#vAVYb51tAd5VKcoarW4MMDOejuEsA_1MF3NmL7R6kKY)
2. **Extract** the ZIP file.
3. **Run the Installer:**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

---

## 🛠️ Troubleshooting (FIX ISSUES)
If SketchUp hangs at the **Welcome Screen** or fails to open a project, run this combined "Quick Fix" command in your terminal:

```bash
# 1. Close all Wine processes
wineserver -k

# 2. Skip Welcome Window & Force Activation
WINEPREFIX=$HOME/.sketchup2026 wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\Common" /v "ShowWelcomeWindow" /t REG_DWORD /d 0 /f

# 3. Ensure Activation file is applied (run inside the package folder)
mkdir -p "$HOME/.sketchup2026/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/SketchUp"
cp crack/SketchUp.exe "$HOME/.sketchup2026/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/SketchUp/SketchUp.exe"
```

---

## 🤝 Contact
**Seid Ramizi** - seid.cincin@gmail.com
