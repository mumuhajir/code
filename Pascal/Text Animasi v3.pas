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
s:='The word goes here';
for i:= 1 to length(s) do a[i]:=s[i];

while z=1 do 
begin
gotoxy(wherex+1,10);
write('a'); write('b');
delay(250);
end;
END.
