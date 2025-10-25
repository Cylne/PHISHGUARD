# PhishGuard 

<div align="center">

[![Python](https://img.shields.io/badge/Python-3.6%2B-blue.svg)]()
[![Platform](https://img.shields.io/badge/Platform-Termux%20%7C%20Linux-green.svg)]()
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)]()

**Professional Phishing URL Scanner untuk Termux & Linux**

</div>


## 🎯 Overview

PhishGuard adalah alat baris-perintah (CLI) untuk mendeteksi dan menganalisis URL phishing. Dirancang untuk digunakan di Termux (Android) dan distribusi Linux, PhishGuard menggabungkan validasi URL, pemindaian berbasis API (mis. VirusTotal) dan laporan ringkas yang mudah dibaca.

Keunggulan singkat: cepat, mudah dipakai, mendukung mode batch, hasil berwarna, dan integrasi VirusTotal untuk peningkatan akurasi.


## ✨ Fitur

| Fitur                 |                             Deskripsi |  Status |
| --------------------- | ------------------------------------: | :-----: |
| 🔍 Single URL Scan    |      Analisis mendalam untuk satu URL | ✅ Ready |
| 📁 Batch Processing   |             Scan banyak URL dari file | ✅ Ready |
| 🎮 Interactive Mode   |        Menu interaktif untuk pengguna | ✅ Ready |
| 🌐 VirusTotal API     | Integrasi lookup/scan dari VirusTotal | ✅ Ready |
| 🎨 Colorful Output    | Output CLI berwarna untuk keterbacaan | ✅ Ready |
| 📊 Detailed Reports   |         Laporan ringkas + rekomendasi | ✅ Ready |
| 🔄 Progress Indicator |           Indikator progres real-time | ✅ Ready |
| 📱 Cross-Platform     |                        Termux & Linux | ✅ Ready |


## 🚀 Quick Start

### Prasyarat

* Python 3.6+
* Termux (Android) atau Linux
* Koneksi internet (untuk pemindaian API)
* (Opsional) API Key VirusTotal untuk hasil lebih lengkap

### Instalasi Cepat

```bash
# install otomatis (recomended)
curl -sL https://raw.githubusercontent.com/Cylne/PHISHGUARD/main/install.sh | bash
```
https://github.com/Cylne/PHISHGUARD.git

## 📦 Instalasi (Manual)

**Opsi 1 — Automatic (Recommended)**

```bash
git clone https://github.com/Cylne/PHISHGUARD.git
cd phishguard
chmod +x install.sh
./install.sh
```

**Opsi 2 — Manual**

```bash
# Install dependencies
pip3 install -r requirements.txt

# Jalankan langsung
python3 phishguard.py --help
```

Verifikasi:

```bash
phishguard --version
```

Contoh output yang diharapkan:

```
PhishGuard  v1.0.0
```


## 🎮 Usage

### 🔍 Single URL Scan

```bash
phishguard.py -u "https://example.com"
```

### 📁 Batch Scan (dari file)

Buat file `urls.txt` dengan satu URL per baris, lalu:

```bash
phishguard.py -f urls.txt
```

### 🎮 Interactive Mode

```bash
phishguard.py
```

Menu interaktif akan menyediakan pilihan untuk scan tunggal, scan dari file, batch mode, dan bantuan.

### Opsi Lainnya

```bash
phishguard.py -b       # batch mode interaktif
phishguard.py --help   # bantuan lengkap
phishguard.py --version
```


## 📷 Screenshot
![Image](https://github.com/user-attachments/assets/c6c95302-2b09-4ade-b57e-f5f411e0498e)

> **Instructions:** Upload your actual screenshots into the repository at `assets/screenshots/` with the filenames below, or attach them here in the issue/PR. After you upload, the badges and images will render automatically on GitHub.

**Expected filenames (place inside `assets/screenshots/`):**

* `main-interface.png`  — Tampilan utama
* `scan-results.png`   — Contoh hasil scanning
* `batch-processing.png` — Proses batch

## 🛠️ Detail Teknis

**Arsitektur singkat**

```
PhishGuard 
├── core/
│   ├── validator.py       # URL validation
│   ├── scanner.py         # Logic scanning & rate limiting
│   └── vt_integration.py  # VirusTotal API handler
├── cli/
│   ├── parser.py         # Argparse / CLI interface
│   └── interactive.py    # Menu interaktif
└── output/
    ├── formatter.py      # Color output
    └── reporter.py       # Builder laporan
```

**Contoh integrasi VirusTotal**

```python
API_ENDPOINT = "https://www.virustotal.com/vtapi/v2/url/report"
API_PARAMS = {
    'apikey': 'YOUR_API_KEY_HERE',
    'resource': 'url_to_scan'
}
```

**Supported platforms:** Termux, Ubuntu, Debian, Kali, Arch, CentOS.


## 🤝 Kontribusi

Kami menyambut kontribusi!

1. Fork repository
2. Buat branch: `git checkout -b feature/namafitur`
3. Commit perubahan: `git commit -m "Add feature"`
4. Push dan buat Pull Request

**Development setup**

```bash
git clone https://github.com/Cylne/PHISHGUARD.git
cd phishguard
python3 -m venv venv
source venv/bin/activate
pip install -r requirements-dev.txt
```

Silakan buka issue untuk bug, ide fitur, atau pertanyaan.


## 📄 Lisensi

Project ini dilisensikan di bawah **MIT License**. Lihat file `LICENSE` untuk detail.


## 👥 Credits & Kontak

**Tim Pengembang**

* Lead Developer: C Y L N E PROJECT
* Security Researcher: Cylne
* UI/UX: Cylne

**Support & Contact**

* Telegram: [https://t.me/Cylneee](https://t.me/Cylneee)
* Website: `https://phishguardid.netlify.app` 

> ⚠️ **Disclaimer:** Tools ini hanya untuk tujuan edukasi dan pengujian keamanan (pentesting) pada sistem yang Anda miliki atau dengan izin pemilik. Penggunaan lain menjadi tanggung jawab pengguna.


**Terima kasih — jangan lupa beri bintang ⭐ pada repository jika PhishGuard membantu Anda!**
