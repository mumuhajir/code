{
   backtobutuntu.pas
   
   Copyright 2015 Muhammad Muhajir <muhajir@linux>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theh
   GNU General Public License for more details.
   
    You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}
Program Segitiga_Pascal;
Uses crt;
Var
i,j,baris:integer;
x: array[1..1000, 1..1000] of integer;
Begin
Writeln('Program segitiga pascal');
writeln('by mrwikia.blogspot.com');
Write('Masukin jumlah baris (#normal 1 - 11) : ');readln(baris);
for i:= 1 to baris do
begin
gotoxy(34-i*3,4+i); 
	for j:= 1 to i do
	begin
		if (j=1) then x[i,j]:=1
		else x[i,j]:=x[i-1,j-1]+x[i-1,j];
		write(x[i,j]:6);
	end;
end;
readln();
End.
