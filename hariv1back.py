#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  experimental.py
#  
#  Copyright 2015 Muhammad Muhajir <muhajir@linux>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

angka0 = ord('0')
angka9 = ord('9')
angka = range(angka0,angka9+1)
anakorang = True
kalimat = 'Masukkan jumlah hari : '

def masukin(word):
	azz = raw_input(word)
	while azz == "" :
		azz = raw_input(word)
	return azz

masukan = masukin(kalimat)

while anakorang :
	for i in range(0,len(masukan)) :
		if ord(masukan[i]) in angka:
			anakorang = False
			break
		else:
			print 'Ups, anda tidak memasukkan angka'
			masukan = masukin(kalimat)
								
masukan = int(masukan)

tahun = masukan / 365
bulan = masukan % 365 / 30
hari  = masukan % 365


print masukan,'hari','=',tahun,'tahun',bulan,'bulan',hari,'hari'
