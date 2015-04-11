{
   test_caesar_cipher1.pas
   
   Copyright 2015 Muhammad Muhajir <muhajir@linux>
   
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


program Caesar_Cipher;

uses crt;



Var judul, kalimat : string;
    baru : Array[1..100] of char;
    PIL, i, geser, b : integer;
    skalimat : char;

 
BEGIN
 writeln(char(32));
 write('masukkan plaintext : ');
 readln(kalimat);
 write('masuukkan key : ');
 readln(Geser);
 for i :=1 to length(kalimat) do
 Begin
   writeln(length(kalimat));
   while geser>26 do geser := geser-26;
   skalimat := upcase(kalimat[i]);
   writeln(kalimat[i]);
   writeln(skalimat);
   b := ord(skalimat)+geser;
   writeln(b);
   if b > 90 then b := 64 + (B-90);
   baru[i] := char(b);
 end;
 write('hasil enkripsi: ');
 for i := 1 to length(kalimat) do write(baru[i]);
 readkey
end.
	


