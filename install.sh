#!/bin/bash
# Script instalasi PhishGuard  untuk Termux dan Linux

echo "=========================================="
echo "   PHISHGUARD  INSTALLER"
echo "=========================================="

# Cek Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 tidak ditemukan!"
    echo "Menginstall Python3..."
    
    if [[ "$OSTYPE" == "linux-android"* ]]; then
        # Termux
        pkg update && pkg install python -y
    else
        # Linux
        sudo apt update && sudo apt install python3 python3-pip -y
    fi
fi

# Install dependencies
echo "📦 Menginstall dependencies..."
pip3 install requests colorama

# Buat direktori phishguard
echo "📁 Membuat direktori..."
mkdir -p ~/phishguard

# Copy file
echo "📄 Mengcopy file..."
cp phishguard-.py ~/phishguard/
cp phishguard-.sh ~/phishguard/

# Buat file executable
chmod +x ~/phishguard/phishguard-.py
chmod +x ~/phishguard/phishguard-.sh

# Buat symlink untuk akses global
if [[ "$OSTYPE" == "linux-android"* ]]; then
    # Termux
    ln -sf ~/phishguard/phishguard-.sh $PREFIX/bin/phishguard
else
    # Linux
    sudo ln -sf ~/phishguard/phishguard-.sh /usr/local/bin/phishguard
fi

echo ""
echo "✅ Instalasi selesai!"
echo ""
echo "CARA PENGGUNAAN:"
echo "  phishguard                    # Mode interaktif"
echo "  phishguard -u \"https://example.com\"  # Scan URL tunggal"
echo "  phishguard -f urls.txt        # Scan dari file"
echo "  phishguard -b                 # Mode batch interaktif"
echo ""
echo "📖 Dokumentasi lengkap: https://github.com/username/phishguard"