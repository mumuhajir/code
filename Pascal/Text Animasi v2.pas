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
Var
i,j,z:integer;
s:string;
a:Array [1..200] of char;
BEGIN
z:=1;
s:='The Words goes here';

	for j:= 1 to 79-length(s) do
	begin
	gotoxy(length(s)+j, 10);
		
		for i:= length(s) downto 1 do
		begin
		gotoxy(wherex-2,10);
		a[i]:=s[i];
		write(a[i]);
		end;
	delay(500);
	gotoxy(1,10);write(' ':80);	
	end;
END.