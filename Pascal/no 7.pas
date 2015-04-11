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
program segitigapascal;

var input,i,j,z : integer;

BEGIN
readln(input);
writeln(input);
z:=2;

for i := 1 to input do
begin
	for j:= 2*input downto i do
	begin
		write('  ');
	end;
	
	for j := 1 to i do
	begin
		write(j,' ');
	end;
	
	for j := i-1 downto 1 do
	begin
		write(j,' ');
	end;

writeln()
end;
for i:=input-1 downto 1 do
begin
	for j:= 1 to i+1 do
		begin
			write('  ');
		end;
	for j:= 1 to i do
		begin
		write(j,' ');
		end;
	
	for j:= 1 to z do
	begin
		write(i,' ');
	end;
	z:= z+4;
	write(i, ' ');
	for j:= i downto 1 do
		begin
		write(j,' ');
		end;
writeln();
end;
end.
