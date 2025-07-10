#!/bin/sh
# file: pph.sh
# Hitung PPH berdasarkan lapisan gaji

echo -n "Berikan gaji dalam ribuan rupiah : "
read gaji

pph=0
remaining=$gaji

# Lapisan 1: 10 juta pertama (15%)
if [ $remaining -gt 10000 ]; then
    layer=10000
else
    layer=$remaining
fi
pph=$((pph + layer * 15 / 100))
remaining=$((remaining - layer))

# Lapisan 2: 25 juta berikutnya (25%)
if [ $remaining -gt 0 ]; then
    if [ $remaining -gt 25000 ]; then
        layer=25000
    else
        layer=$remaining
    fi
    pph=$((pph + layer * 25 / 100))
    remaining=$((remaining - layer))
fi

# Lapisan 3: Sisa di atas 35 juta (35%)
if [ $remaining -gt 0 ]; then
    pph=$((pph + remaining * 35 / 100))
fi

echo "Pajak Penghasilan = $pph (ribu rupiah)"
