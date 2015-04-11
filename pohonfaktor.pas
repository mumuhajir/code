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
i,j,p,a, input, n, jf :integer;
yos, notprima : string;
prima : array [1..1000] of integer;


BEGIN
jf:=0;
a:=0;
n:=1;
for i := 1 to 5000 do 
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
write('Masukkan angka yang ingin anda cari pohon faktornya : ');readln(input);
writeln();gotoxy(30,wherey);write(input);
for i:=1  to 5000 do
begin
 if (input=10) or (input=1) then notprima:='yes' 
 else if (prima[i]=input) then begin write(' Adalah Bilangan Prima	');break;end	
 else notprima:= 'yes';	
end;
repeat

if not(input mod prima[n]=0) then n:= n +1
else begin input := input div prima[n];
	if input<>1 then 
	begin gotoxy(wherex-2,wherey+1);write('/ \');
	jf := jf + 1;
	gotoxy(wherex-4,wherey+1); 
	write(prima[n],input:4); end;
end;
until input=1;
writeln();
writeln();
END.
