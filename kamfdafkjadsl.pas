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
orang,bebek,dapat,sisa : integer;

procedure eek();
begin

write('Masukkan jumlah bebek : ');readln(bebek);
write('Masukkan jumlah orang : ');readln(orang);

if not ( ( (orang > 1) and (orang < 1000) ) and ( (bebek > 1) and (bebek < 1000) ) ) then
	begin
		writeln('Jumlah orang dan bebek berkisar dari 2 sampai 999');
		Writeln('Masukkan ulang');
		eek();
	end;
if orang > bebek then 
	begin
		writeln('Bebek tidak jadi dibagikan karena orang > bebek');
		writeln('Masukkan data ulang');
		eek();
	end;

end;

BEGIN
writeln('Pak lengkeng ingin membagikan bebeknya kepada semua orang yang hadir di rumahnya');
writeln('Anda ditugaskan oleh pak dengkel untuk menhitung jumlah tamu yang datang dan bebek yang tersedia');

eek();

dapat := bebek div orang ;
sisa  := bebek mod orang ;

writeln('Setiap orang mendapatkan : ',dapat,' bebek');
writeln('Jumlah bebek yang tersisa : ',sisa);

readln();
END.

