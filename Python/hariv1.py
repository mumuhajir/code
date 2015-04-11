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
angka = range(angka0,angka9)
anakorang = False

kalimat = 'Masukkan Jumlah Hari : '
masukangka = 'Mohon masukkan jumlah hari berupa angka'

def masukin(word):
	azz = raw_input(word)
	while azz == "" :
		azz = raw_input(word)
	return azz

while anakorang == False :
	list_bukan_angka = []
	masukan = masukin(kalimat)
	jumlahbukan = 0
	for i in range(0,len(masukan)) :
		if not(ord(masukan[i]) in angka):
			jumlahbukan += 1
			list_bukan_angka.append(i+1)
	if jumlahbukan > 0 :
		print
		print "Terdapat",jumlahbukan,"digit karakter yang bukan angka"
		print
		print masukangka
		print
	if jumlahbukan == 0 :
		break
								
masukan = int(masukan)

tahun  = masukan / 365
bulan  = masukan % 365 / 30
minggu = masukan % 365 % 30 / 7
hari   = masukan % 365 % 30 % 7


print masukan,'hari','=',tahun,'tahun',bulan,'bulan',minggu,'minggu',hari,'hari'
