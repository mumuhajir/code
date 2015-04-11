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
Program dfasdl;
uses crt;

var 
k : string;
i,j,t : integer;
a : array [1..100] of char;
begin
Writeln('Text Animasi by mrwikia.blogspot.com');
write('masukkan text yang ingin dianimasikan : ');readln(k);
t:= 80 - 2*length(k);
t:= t div 2;
for i := 1 to length(k) do
	begin
	gotoxy(t+2*i,5);
	a[i]:=k[i];
	write(a[i]);
	for j:= 1 to 10 do
		begin
		if not(a[i]=' ') then
			begin
				gotoxy(wherex-1,wherey);
				write(' ');
				gotoxy(wherex-1,wherey+1);
				write(a[i]);
				delay(100);
			end
		end;
	end;
readln();
end.

