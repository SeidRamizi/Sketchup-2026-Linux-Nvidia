# 🏛️ SketchUp 2026 for Linux (NVIDIA & AMD Optimized)

---

## 📸 Showcase
![SketchUp 2026 running on Linux](screenshot.png)

---

## 📦 Download Links
🚀 **[Download UNIVERSAL Version (Recommended)](https://mega.nz/file/HgJmDSbY#h4JhUNr_zjbHcJtjzkULqVQag6_rz1v7QUQ3B4NvlD0)**  
🟢 **[Download NVIDIA ONLY Version (Legacy)](https://mega.nz/file/S04E0D4J#vAVYb51tAd5VKcoarW4MMDOejuEsA_1MF3NmL7R6kKY)**  

---

## 🛠️ GPU Specific Fixes

### 🟢 NVIDIA Users
- The launcher is pre-configured. Manual launch:
  `__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia WINEPREFIX=$HOME/.sketchup2026 wine ...`

### 🔴 AMD & 🔵 Intel Users
- Hybrid Graphics (Laptops): Use `DRI_PRIME=1` to force dedicated GPU.

---

## 🔥 Quick Fix for Common Issues
If SketchUp hangs at the **Welcome Screen**, run this inside the package folder:

```bash
# 1. Close processes
wineserver -k

# 2. Skip Welcome screen
WINEPREFIX=$HOME/.sketchup2026 wine reg add "HKEY_CURRENT_USER\Software\SketchUp\SketchUp 2026\Common" /v "ShowWelcomeWindow" /t REG_DWORD /d 0 /f

# 3. Apply Activation
mkdir -p "$HOME/.sketchup2026/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/SketchUp"
cp crack/SketchUp.exe "$HOME/.sketchup2026/dosdevices/c:/Program Files/SketchUp/SketchUp 2026/SketchUp/SketchUp.exe"
```

---

## 🤝 Contact
**Seid Ramizi** - seid.cincin@gmail.com
