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

program konversi;
uses crt ;

var 
	rupiah,dollar,key : real;
	pilihan : string;
	
procedure choose();
begin
Write('Pilihan (1/2) : ');Readln(pilihan);
if not((pilihan = '1') or (pilihan = '2')) then 
begin
	 Writeln('Silahkan Pilih 1 ,atau 2 ');
	 choose();
	 end;
end;

BEGIN
	key := 12651.85;
	
	Writeln('Program Konversi ');
	
	Writeln('Tentukan pilihan anda : ');
	Writeln('1.Rupiah ke Dollar');
	Writeln('2.Dollar ke rupiah)');
	choose();
	Write('1 dollar = .. rupiah');readln(key);
	Writeln('Mohon angka yang 	dimasukkan tanpa titk(.) dan koma (,)');
	Writeln('Contoh : Rp. 13000 , $34');
	Writeln();
	if pilihan = '1' then begin
	write('Rupiah : Rp. ');readln(rupiah);
	dollar := rupiah / key ;
	Write('Rp. ', rupiah:2	:2, ' = ', '$ ' ,dollar:2:2);
	end
	
	else begin
	write('Dollar : $ ');readln(dollar);
	rupiah := dollar * key ;
	Write('$', dollar:2:2, ' = ', 'Rp. ' ,rupiah:2:2);
	end;
		
END.


