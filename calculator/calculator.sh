#!/bin/bash

# Fungsi untuk operasi penjumlahan
add() {
    echo $(($1 + $2))
}

# Fungsi untuk operasi pengurangan
subtract() {
    echo $(($1 - $2))
}

# Fungsi untuk operasi perkalian
multiply() {
    echo $(($1 * $2))
}

# Fungsi untuk operasi pembagian
divide() {
    if [ $2 -ne 0 ]; then
        echo $(($1 / $2))
    else
        echo "Error: Division by zero"
    fi
}

# Pilihan operasi
operations=("Penjumlahan" "Pengurangan" "Perkalian" "Pembagian")

# Menampilkan menu operasi
PS3="Masukkan nomor operasi (1-4): "
select operation in "${operations[@]}"; do
    case $REPLY in
        1|2|3|4) break;;
        *) echo "Pilihan tidak valid";;
    esac
done

# Membaca dua angka dari pengguna
read -p "Masukkan angka pertama: " num1
read -p "Masukkan angka kedua: " num2

# Melakukan operasi sesuai pilihan pengguna
case $REPLY in
    1) result=$(add $num1 $num2);;
    2) result=$(subtract $num1 $num2);;
    3) result=$(multiply $num1 $num2);;
    4) result=$(divide $num1 $num2);;
esac

# Menampilkan hasil
echo "Hasil: $result"
