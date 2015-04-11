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

var masukan : string;
	cipher : char;
    plain, chiperord, key , i, pilihan : integer;
    plainout : Array [1..50] of char;
    bolpilih : Boolean;

procedure convert(min,selisih,max :integer);
   begin
     if bolpilih = true then
     plain := chiperord + key
     else plain := chiperord - key;
     
     while plain > max  do 
     begin
      plain := plain - selisih;
     end;
     while plain < min do
     begin
      plain := plain + selisih;
     end;
     
end;

procedure choose();
begin
Write('Pilihan (1/2) : ');Readln(pilihan);
if pilihan = 1 then bolpilih := true
else if pilihan = 2 then bolpilih := false
else begin
	 Writeln('Silahkan Pilih 1 ,atau 2 ');
	 choose();
	 end;
end;


 
BEGIN
clrscr;

Writeln('Caesar Cipher, created by Muhammad Muhajir');
Writeln('Roxastech.blogpsot.com');
Writeln('Max Ciphertext / Plainplain Character = 100 ');

Writeln('Apa yang ingin anda lakukan?');
Writeln('1.Enkripsi (Plaintext ke Chipertext)');
Writeln('2.Dekripsi (Chipertext ke Plaintext)');
choose();

if bolpilih = true then
write('Plaintext : ')
else write('Chipertext :');
readln(masukan);
write('key : ');readln(key);

{Begin the convert proccess}
for i := 1 to length(masukan) do 
Begin
 cipher := masukan[i]; 
 
 chiperord := ord(cipher);
 
  case  chiperord of 
    48 .. 57 : convert(48,10,57); (*angka*)
    65 .. 90 : convert(65,26,90);(*huruf besar*)
    97 .. 122 : convert(92,26
    ,122);(*huruf kecil*)
    else plain := chiperord;
  end;
 plainout[i] := char(plain);
   
end;
write('Plain Text : ');
for i := 1 to length(masukan) do
begin
 write(plainout[i]);
end;
Readkey();

END.

