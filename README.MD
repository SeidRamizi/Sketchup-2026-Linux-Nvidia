# 🏛️ SketchUp 2026 for Linux (NVIDIA Optimized)

[![Wine Support](https://img.shields.io/badge/Wine-Staging%2011.0+-red.svg)](https://www.winehq.org/)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue.svg)](https://en.wikipedia.org/wiki/Linux)
[![NVIDIA](https://img.shields.io/badge/GPU-NVIDIA%20Optimized-green.svg)](https://www.nvidia.com/)

An automated compatibility layer and installer script to run **SketchUp 2026** on Linux distributions with full hardware acceleration, fixed graphics settings, and high-quality rendering.

---

## 📸 Showcase
![SketchUp 2026 running on Fedora Linux with NVIDIA GTX 1060](screenshot.png)
*SketchUp 2026 running perfectly on Fedora 44 (KDE Plasma) using this compatibility setup.*

---

## 🌟 Overview

Running SketchUp 2026 on Linux via Wine usually results in "Invalid Handle" errors during installation and greyed-out graphics settings (Low quality) within the app. This project solves those issues by:
- **Automating the environment setup** (Wine Prefix & DLL overrides).
- **Enabling High-Quality Graphics** (forcing Anti-Aliasing and High-Res textures via Registry).
- **Optimizing performance** for NVIDIA GTX/RTX cards using DXVK and VKD3D.

## 🚀 Key Features

*   ✅ **Auto-Installer:** A single `install.sh` script that handles everything.
*   ✅ **Graphics Fix:** Unlocks "Anti-Aliasing" and "Maximum Texture Size" which are typically disabled in Wine.
*   ✅ **NVIDIA Offloading:** Pre-configured desktop launcher to ensure the app uses your discrete GPU.
*   ✅ **Stability:** Configured to use the stable Classic Graphics Engine to prevent "Bug Splat" crashes.

## 📦 Installation Guide

### 1. Download the Package
👉 **[Download Full Package (Mega.nz)](https://mega.nz/file/uoxnFbgC#vAVYb51tAd5VKcoarW4MMDOejuEsA_1MF3NmL7R6kKY)**

### 2. Run the Setup
```bash
chmod +x install.sh
./install.sh
```

## 🤝 Contact & Support
**Project Maintainer:** Seid Ramizi  
📧 **Email:** seid.cincin@gmail.com

