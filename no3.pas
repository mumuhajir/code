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
Program bil_prima;
uses crt;

var
i,j,input,p,a, sampai :integer;
yos : string;
prima : array [1..1000] of integer;


BEGIN
a:=0;
for i := 1 to 1000 do 
begin
p:=0;
yos:='false';
	for j:= 1 to i do 
	begin
		if i mod j = 0 then Inc(p);
	end;
if p=2 then 
begin yos:='true';inc(a); prima[a]:=i ; end;
end;
Write('Urutkan bilangan prima yang ditemukan dari 1 sampai '); readln(sampai);
for i:=1  to sampai do
begin
write(i,'. ');
 if not(prima[i]=0) then write(prima[i],' ':4);
writeln();
end;



END.
