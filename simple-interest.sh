#!/bin/bash

# Script Sederhana untuk Menghitung Bunga Sederhana

echo "--- Kalkulator Bunga Sederhana (Bash Script) ---"

# 1. Minta Input Pokok (Principal)
read -p "Masukkan Jumlah Pokok (P): " P

# 2. Minta Input Suku Bunga (Rate)
read -p "Masukkan Suku Bunga Tahunan (r) dalam %: " R_PERCENT

# 3. Minta Input Waktu (Time)
read -p "Masukkan Periode Waktu (t) dalam tahun: " T

# Konversi Suku Bunga dari Persentase ke Desimal
# Bash standar hanya melakukan operasi integer (bilangan bulat). Kita menggunakan 'bc' untuk floating-point.
R=$(echo "scale=2; $R_PERCENT / 100" | bc)

# Hitung Bunga Sederhana: I = P * r * t
# Gunakan 'bc' untuk perhitungan floating-point yang akurat
INTEREST=$(echo "scale=2; $P * $R * $T" | bc)

# Hitung Jumlah Total (Amount) = P + I
AMOUNT=$(echo "scale=2; $P + $INTEREST" | bc)

echo "------------------------------------------------"
echo "Detail Perhitungan:"
echo "Pokok (P): $P"
echo "Suku Bunga (r): $R_PERCENT%"
echo "Waktu (t): $T tahun"
echo "------------------------------------------------"
echo "Bunga Sederhana (I): $INTEREST"
echo "Jumlah Total (A): $AMOUNT"
echo "------------------------------------------------"

# Jadikan script dapat dieksekusi (disarankan, tapi tidak wajib untuk di-commit)
# chmod +x simple-interest.sh