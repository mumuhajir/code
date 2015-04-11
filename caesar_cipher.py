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

print "Caesaer Cipher with python"
print "Created by Hamba Allah"
print """ ----------------------- """

li1 = []
li2 = []

def askstring(word):
	b = raw_input(word)
	while b=="" :
		b = raw_input(word)	
	return b
	
def convert(mi,sel,ma,target):
	target += key
	while target > ma :
		target -= sel
	while target < mi :
		target +=  sel
	return target

masukan = askstring("Write the word : ")
key = askstring('write the key : ')
key = int(key)	


for i in range(0,len(masukan)):
	
	li1.append(masukan[i])
	li2.append(ord(masukan[i]))	
	
	if li2[i] in range(97,122+1):
		li2[i]=convert(97,26,122,li2[i])
	if li2[i] in range(65,90+1):
		li2[i]= convert(65,26,90,li2[i])
	if li2[i] in range(48,57+1):
		li2[i]= convert(48,10,57,li2[i])	
	
	li2[i] = chr(li2[i])
li1.append('')	
li2.append('')
	
for i in range(0,len(masukan)):
	li1[0] = li1[0]+li1[i+1]	
print li1[0]
	
for i in range(0,len(masukan)):
	li2[0] = li2[0]+li2[i+1]	
print li2[0]

print

raw_input()
