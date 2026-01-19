# Windows 10 ThinkPad Performance Case Study

This repository documents a real-world case study of diagnosing and fixing a slow Windows 10 Lenovo ThinkPad using built-in tools and PowerShell.  
The objective was to restore performance without reinstalling Windows, using a structured troubleshooting workflow.

## 📄 PDF Version of Slides
[Download the PDF](https://docs.google.com/presentation/d/1J4WmL9aEtb3ZK3m9QTHoQZ8rgHyKHas-4jROc9dXBgE/view?usp=sharing)

---

## 🔍 What’s Included

- Performance diagnostics (CPU, RAM, Disk, Startup)
- System repair and deep cleaning
- Windows optimization for older hardware
- Hardware upgrade insights (SSD / RAM)
- PowerShell automation scripts
- Full presentation slides

---

## 📊 Presentation Slides

The full case study presentation is available here:  
👉 https://docs.google.com/presentation/d/1J4WmL9aEtb3ZK3m9QTHoQZ8rgHyKHas-4jROc9dXBgE/view?usp=sharing

---

## 💻 PowerShell Scripts

| Script | Description |
|--------|-------------|
| [analysis.ps1](scripts/analysis.ps1) | Collects system diagnostics (CPU, RAM, Disk, Drive Type, Startup) |
| [cleanup.ps1](scripts/cleanup.ps1) | Repairs Windows components and performs deep cleanup |
| [optimization.ps1](scripts/optimization.ps1) | Applies performance tweaks for older hardware |

---

## ▶️ How to Use

### 1. Run the Analysis
```powershell
.\scripts\analysis.ps1
