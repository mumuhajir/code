	{
   Cesar_cipher.pas
   
   Copyright 2015 Roxastech <muhajir@deepin>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}


program caesarcipher;

uses crt;

var masukan, pilihan : string;
	cipher : char;
    plain, chiperord, key , i  : integer;
    plainout : Array [1..80] of char;(*80 == jumlah karakter maksimal*)

procedure convert(min,selisih,max :integer);
   begin	
     if pilihan = '1' then (*pilihan = '1' ==> enkripsi*)
     plain := chiperord + key(* ==> pergeseran ke kanan *)
     else plain := chiperord - key;(*else ==> bolpilih = '2' ==> dekripsi
     chiperord - key ==> pergeseran ke kiri*)
     
     {Agar, contohnya enkripsi 'z' + key 1 menjadi 'a', atau 'a' dekripsi key 1 menjadi 'z'} 
     while plain > max  do (*artinya jika plain melebihi kategori max chiperord*)
     begin
      plain := plain - selisih;(*untuk enkripsi / pergeseran ke kanan*)
     end;
     while plain < min do
     begin
      plain := plain + selisih;(*untuk dekripsi / pergeseran ke kiri*)
     end;
     
end;

{Prosedure untuk Pilihan}
procedure choose();
begin
Write('Pilihan (1/2) : ');Readln(pilihan);
if not((pilihan = '1') or (pilihan = '2')) then 
begin
	 Writeln('Silahkan Pilih 1 ,atau 2 ');
	 choose();
	 end;
end;


{Program Utama} 
BEGIN
clrscr;

Writeln('Caesar Cipher, created by Muhammad Muhajir');
Writeln('Roxastech.blogpsot.com');
writeln();
Writeln('Contoh Enkripsi , Plaintext: Serang sayap kanan');
Writeln('dengan key : 3');
Writeln('akan menghasilkan Chipertext : Vhudqj Vdbds Ndqdq');
Writeln('Untuk memecahkan Chipertext tersebut, gunakan Dekripsi');
Writeln('sehinga akan mendapatkan hasil ''Serang sayap kanan'' kembali');
Writeln('Enkripsi biasanya digunakan untuk merahasiakan suatu pesan');
Writeln('Kemudian dibuka dengan Dekripsi');
Writeln('Dalam program ini enkripsi yang digunakan adalah  Caesar Chiper');
writeln();
Writeln('Apa yang ingin anda lakukan?');
Writeln('1.Enkripsi (Plaintext ke Chipertext)');
Writeln('2.Dekripsi (Chipertext ke Plaintext)');
choose();(*jalankan prosedure pilihan*)
Writeln('Maksimal Huruf : 80');
if pilihan = '1' then
write('Plaintext : ')
else write('Chipertext :');
readln(masukan);
write('key : ');readln(key);

{Proses string =>char perhuruf=>ordinal type=>geser/+key=>kembali ke char=>simpan ke Array}
for i := 1 to length(masukan) do (*length supaya bisa select perhuruf stringnya, tanpa menulis satu2*)
Begin

 {select string perhuruf, dan jadi bentuk char}
 cipher := masukan[i]; 
 
 {ubah ke bentuk ordinal}
 chiperord := ord(cipher);(*ubah string yang sudah menjadi perhuruf, menjadi bentuk ordinal/angka*)
 
 {Melakukan Pergeseran dalam bentuk ordinal }
  case  chiperord of 
    48 .. 57 : convert(48,10,57); (*angka*)
    65 .. 90 : convert(65,26,90);(*huruf besar*)
    97 .. 122 : convert(97,26,122);(*huruf kecil*)
    else plain := chiperord;(*selain angka, huruf besar, dan kecil*)
    (*artinya space dan simbol tidak digeser atau ditambah key*)
  end;

  {Simpan hasil ke Array}
 plainout[i] := char(plain);
end;

if pilihan = '1' then
write('Plaintext : ')
else write('Chipertext :');
for i := 1 to length(masukan) do(*pakai length supaya bisa print semua hasil*)
begin

 write(plainout[i]);
end;
Writeln();
Readkey();

END.

