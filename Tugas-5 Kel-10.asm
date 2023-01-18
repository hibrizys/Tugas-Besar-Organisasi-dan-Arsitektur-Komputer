.data               # Untuk mengawali pendeklarasian variabel
teks1:.asciiz "IT-44-03 Kelompok 10\n"                                                                                                       # Variabel string teks 1
teks2:.asciiz "Hibrizy. J. H. Sulistiyo     1303204017\nPutri Choiruniyah            1303202076\nBaptista. G. Enrico          1303204059\n"  # Variabel string teks 2
teks3:.asciiz "\nUntuk keluar dari program: Masukkan angka -66"                                                                              # Variabel string teks 3
teks4:.asciiz "Bilangan yang dimasukkan harus positif!"                                                                                      # Variabel string teks 4
var1:.asciiz "\nMasukkan nilai Panjang: "       # Variabel string var 1
var2:.asciiz "\nMasukkan nilai Lebar: "         # Variabel string var 2
var3:.asciiz "\nMasukkan nilai Alas: "          # Variabel string var 3
var4:.asciiz "\nMasukkan nilai Tinggi: "        # Variabel string var 4
var5:.asciiz "\nMasukkan nilai Jari - Jari: "   # Variabel string var 5
spasi:.asciiz "\n====================================================="     # Variabel string spasi
spasi2:.asciiz "\n\n"                                                       # Variabel string spasi2
persegi:.asciiz "\nJumlah luas persegi panjang = "          # Variabel string persegi
segitiga:.asciiz "\nJumlah luas segitiga = "                # Variabel string segitiga
setengah:.float 0.5             # Variabel setengah bertipe float
phi:.float 3.14                 # Variabel phi bertipe float
lingkaran:.asciiz "\nJumlah luas lingkaran = "              # Variabel string lingkaran
keluar:.asciiz "\n============== [ PROGRAM KELUAR!! ] =================\n\n"       # Variabel string keluar   
.text               # Untuk mengawali instruksi - instruksi atau isi program (compulsory)
.globl main         # Untuk menyatakan bahwa label main adlaah label global yang akan di eksekusi pertama kali dan menjadi acuan untuk program lainnya (compulsory)
main:                                       # prosedur main
    la $a0, teks1                           # Load address teks1 ke $a0
    li $v0, 4                               # Perintah untuk print string
    syscall                                 # String teks1 di tampilkan
    la $a0, teks2                           # Load address teks2 ke $a0
    li $v0, 4                               # Perintah untuk print string
    syscall                                 # String teks2 di tampilkan
    la $a0, teks3                           # Load address teks3 ke $a0
    li $v0, 4                               # Perintah untuk print string
    syscall                                 # String teks3 di tampilkan
    la $a0, spasi                           # Load address spasi ke $a0
    li $v0, 4                               # Perintah untuk print string
    syscall                                 # menampilkan baris berikut
Variabel_Panjang:                           # prosedur Variabel_Panjang
    repeat_panjang:                         # prosedur repeat_panjang
        la $a0, var1                        # Load address var1 ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String var1 di tampilkan
        li $v0, 5                           # Perintah baca nilai Variabel panjang
        syscall                             # nilai variabel Panjang dibaca
        move $t0, $v0                       # Copy isi register $v0 ke $t0
        beq $t0, -66, exit                  # Program akan keluar jika mengetik -66
        bge $v0, $zero, keluar_panjang      # jika input >= 0, maka prosedur keluar_panjang
        li $v0, 4                           # Perintah untuk print string
        la $a0, teks4                       # Load address teks4 ke $a0
        syscall                             # String teks4 di tampilkan
        j repeat_panjang                    # jika inputan negatif maka prosedur input akan diulang
    keluar_panjang:                         # prosedur keluar_panjang
        or $s0, $zero, $v0                  # $s0 menyimpan nilai panjang(inputan)
        j Variabel_Lebar                    # jika inputan positif maka akan melompat ke prosedur variabel berikutnya
Variabel_Lebar:                             # prosedur Variabel_Lebar
    repeat_lebar:                           # prosedur repeat_lebar
        la $a0, var2                        # Load address var2 ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String var2 di tampilkan
        li $v0, 5                           # Perintah baca nilai Variabel Lebar
        syscall                             # nilai variabel Lebar dibaca
        move $t0, $v0                       # Copy isi register $v0 ke $t0
        beq $t0, -66, exit                  # Program akan keluar jika mengetik -66
        bge $v0, $zero, keluar_lebar        # jika input >= 0, maka prosedur keluar_lebar
        li $v0, 4                           # Perintah untuk print string
        la $a0, teks4                       # Load address teks4 ke $a0
        syscall                             # String teks4 di tampilkan
        j repeat_lebar                      # jika inputan negatif maka prosedur input akan diulang
    keluar_lebar:                           # prosedur keluar_lebar
        or $s1, $zero, $v0                  # $s1 menyimpan nilai lebar(inputan)
        j Variabel_Alas                     # jika inputan positif maka akan melompat ke prosedur variabel berikutnya
Variabel_Alas:                              # prosedur Variabel_Alas
    repeat_alas:                            # prosedur repeat_alas
        la $a0, var3                        # Load address var3 ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String var3 di tampilkan
        li $v0, 5                           # Perintah baca nilai Variabel Alas
        syscall                             # nilai variabel Alas dibaca
        move $t0, $v0                       # Copy isi register $v0 ke $t0
        beq $t0, -66, exit                  # Program akan keluar jika mengetik -66
        bge $v0, $zero, keluar_alas         # jika input >= 0, maka prosedur keluar_alas
        li $v0, 4                           # Perintah untuk print string
        la $a0, teks4                       # Load address teks4 ke $a0
        syscall                             # String teks4 di tampilkan
        j repeat_alas                       # jika inputan negatif maka prosedur input akan diulang
    keluar_alas:                            # prosedur keluar_alas
        or $s2, $zero, $v0                  # $s2 menyimpan nilai alas(inputan)
        j Variabel_Tinggi                   # jika inputan positif maka akan melompat ke prosedur variabel berikutnya
Variabel_Tinggi:                            # prosedur Variabel_Tinggi
    repeat_tinggi:                          # prosedur repeat_tinggi
        la $a0, var4                        # Load address var4 ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String var4 di tampilkan
        li $v0, 5                           # Perintah baca nilai Variabel Tinggi
        syscall                             # nilai variabel Tinggi dibaca
        move $t0, $v0                       # Copy isi register $v0 ke $t0
        beq $t0, -66, exit                  # Program akan keluar jika mengetik -66
        bge $v0, $zero, keluar_tinggi       # jika input >= 0, maka prosedur keluar_tinggi
        li $v0, 4                           # Perintah untuk print string
        la $a0, teks4                       # Load address teks4 ke $a0
        syscall                             # String teks4 di tampilkan
        j repeat_tinggi                     # jika inputan negatif maka prosedur input akan diulang
    keluar_tinggi:                          # prosedur keluar_tinggi
        or $s3, $zero, $v0                  # $s3 menyimpan nilai tinggi(inputan)
        j Variabel_Jari2                    # jika inputan positif maka akan melompat ke prosedur variabel berikutnya
Variabel_Jari2:                             # prosedur Variabel_jari2
    repeat_jari2:                           # prosedur repeat_jari2
        la $a0, var5                        # Load address var5 ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String var5 di tampilkan
        li $v0, 5                           # Perintah baca nilai Variabel Jari - jari
        syscall                             # nilai variabel Jari - jari dibaca
        move $t0, $v0                       # Copy isi register $v0 ke $t0
        beq $t0, -66, exit                  # Program akan keluar jika mengetik -66
        bge $v0, $zero, keluar_jari2        # jika input >= 0, maka prosedur keluar_jari2
        li $v0, 4                           # Perintah untuk print string
        la $a0, teks4                       # Load address teks4 ke $a0
        syscall                             # String teks4 di tampilkan
        j repeat_jari2                      # jika inputan negatif maka prosedur input akan diulang
   keluar_jari2:                            # prosedur keluar_jari2
        or $s4, $zero, $v0                  # $s4 menyimpan nilai jari-jari(inputan)
        j pengolahan                        # inputan akan melompat ke prosedur pengolahan
pengolahan:                                 # prosedur pengolahan
    mtc1 $s2, $f2                           # menaruh integer $s2 ke floating point register $f2
    mtc1 $s3, $f3                           # menaruh integer $s3 ke floating point register $f3
    mtc1 $s4, $f4                           # menaruh integer $s4 ke floating point register $f4
    mtc1 $s6, $f6                           # menaruh integer $s6 ke floating point register $f6
    mtc1 $s7, $f7                           # menaruh integer $s7 ke floating point register $f7
    cvt.s.w $f2, $f2                        # mengconvert integer($f2) ke floating point single
    cvt.s.w $f3, $f3                        # mengconvert integer($f3) ke floating point single
    cvt.s.w $f4, $f4                        # mengconvert integer($f4) ke floating point single
    cvt.s.w $f6, $f6                        # mengconvert integer($f6) ke floating point single
    cvt.s.w $f7, $f7                        # mengconvert integer($f7) ke floating point single
    lwc1 $f8, setengah                      # load word tipe float setengah ke $f8
    lwc1 $f9, phi                           # load word tipe float phi ke $f9
    luas_persegi_panjang:                   # prosedur luas_persegi_panjang
        or $t8, $s2, $s3                   # $t8 = $s2 atau $s3
        bgtz $t8, luas_segitiga             # jika register $t8 > 0, maka akan menuju ke prosedur luas_segitiga
        or $s5, $s0, $s1                    # $s5 = $s0 atau $s1
        bne $s5, $zero, luasP               # jika $s5 != 0 maka akan menuju ke prosedur luasP   
        and $s4, $s4, $s4                   # $s4 = $s4 dan $s4
        bgtz $s4, luas_lingkaran            # jika register $s4 > 0, maka akan menuju ke prosedur luas_lingkaran
        luasP:                              # prosedur luasP
            la $a0, spasi                   # Load address spasi ke $a0
            li $v0, 4                       # Perintah untuk print string
            syscall                         # menampilkan baris berikut      
            la $a0, persegi                 # Load address persegi ke $a0
            li $v0, 4                       # Perintah untuk print string
            syscall                         # String persegi di tampilkan
            mul $s5, $s0, $s1               # melakukan perkalian di register $s5 = $s0 x $s1
            ori $v0, $zero, 1               # $v0 = $zero atau 1
            or $a0,$zero ,$s5               # $a0 = $zero atau $s5
            syscall                         # menampilkan hasil ke layar
            la $a0, spasi                   # Load address spasi ke $a0
            li $v0, 4                       # Perintah untuk print string
            syscall                         # menampilkan baris berikut
            la $a0, spasi2                  # Load address spasi2 ke $a0
            li $v0, 4                       # Perintah untuk print baris
            syscall                         # menampilkan baris berikut
            j main                          # melakukan looping
    luas_segitiga:                          # prosedur luas_segitiga
        la $a0, spasi                       # Load address spasi ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # menampilkan baris berikut
        la $a0, segitiga                    # Load address segitiga ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String segitiga di tampilkan
        mul.s $f6, $f2, $f3                 # melakukan perkalian di register $f6 = $f2 x $f3
        mul.s $f6, $f6, $f8                 # melakukan perkalian di register $f6 = $f6 x $f8
        li $v0, 2                           # perintah untuk print float
        mov.s $f12, $f6                     # memindahkan register $f6 ke $f12
        syscall                             # menampilkan hasil ke layar
        la $a0, spasi                       # Load address spasi ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # menampilkan baris berikut
        la $a0, spasi2                      # Load address spasi2 ke $a0
        li $v0, 4                           # Perintah untuk print baris
        syscall                             # menampilkan baris berikut
        j main                              # melakukan looping
    luas_lingkaran:                         # prosedur luas_lingkaran
        la $a0, spasi                       # Load address spasi ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # menampilkan baris berikut
        la $a0, lingkaran                   # Load address segitiga ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # String segitiga di tampilkan
        mul.s $f7, $f4, $f4                 # melakukan perkalian di register $f7 = $f4 x $f4
        mul.s $f7, $f7, $f9                 # melakukan perkalian di register $f7 = $f7 x $f9
        li $v0, 2                           # perintah untuk print float
        mov.s $f12, $f7                     # memindahkan register $f7 ke $f12
        syscall                             # menampilkan hasil ke layar
        la $a0, spasi                       # Load address spasi ke $a0
        li $v0, 4                           # Perintah untuk print string
        syscall                             # menampilkan baris berikut
        la $a0, spasi2                      # Load address spasi2 ke $a0
        li $v0, 4                           # Perintah untuk print baris
        syscall                             # menampilkan baris berikut
        j main                              # melakukan looping
exit:                                       # prosedur exit
    la $a0, keluar                          # Load address teks1 ke $a0
    li $v0, 4                               # Perintah untuk print string
    syscall                                 # String teks1 di tampilkan
    jr $ra                                  # Mengakhiri program