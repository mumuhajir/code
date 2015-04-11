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
i:longint;
z,w,j,f,m:integer;
a:array[1..4]of integer;
Begin
w:=0;
randomize;
Writeln('Permainan Jackpot');
write('mau tunggu berapa menit setiap digit? : ');readln(z);
f:=z;
m:=0;
gotoxy(30,10);
for j:= 1 to 4 do begin
z:=f*1000;
w:=0;
write('  ');
repeat
w:=w+1;
gotoxy(wherex-1,wherey);
i:=(random(10));
a[j]:=i;

write(i);
delay(1)
until w=z ;
if (a[j-1])=(a[j])then m:=m+1; 
delay(30);
end;
writeln();
gotoxy(20,12);
case m of
1 : write('skor anda :2');
2 : write('skor anda :3');
3 : write('skor anda :4');
4 : write('skor anda :5');
else write('maaf,anda kurang tamfan :v')
end;
readln();
end.
