#!/bin/bash
# Wrapper script untuk PhishGuard Terminal

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_SCRIPT="$SCRIPT_DIR/phishguard.py"

# Cek apakah file Python ada
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "❌ File phishguard.py tidak ditemukan!"
    echo "Jalankan install.sh terlebih dahulu."
    exit 1
fi

# Jalankan Python script
python3 "$PYTHON_SCRIPT" "$@"