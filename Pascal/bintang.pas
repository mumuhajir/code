{
   bintang.pas
   
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

program tukar_uang;
uses crt;
var
rupiah,dollar,sisa : integer;
const
kurs_dollar = 12000;

begin
clrscr;
write('Nilai Rupiah:','');
readln(rupiah);
dollar:= rupiah div kurs_dollar;
sisa:= rupiah mod kurs_dollar;
writeln('Hasil Tukar');
writeln('Dollar = ',dollar);
writeln('Sisa = ',sisa);
readln();
end.


