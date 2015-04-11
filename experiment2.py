#declaration
angka0 = ord('0')
angka9 = ord('9')
angka = range(angka0,angka9+1)
bukan_angka = True
bukan_tong = 0

#All def should be here
def prompt(kk):
	hasil = raw_input(kk)
	while hasil is '' :
		hasil = raw_input(kk)
	return hasil

	
#All def end here

#Process begin here

masukan = prompt("Masukkan jumlah hari : ")

while bukan_angka == True :
	bukan_tong == 0
	for i in range(0,len(masukan)):
		if ord(masukan[i]) in angka :
			bukan_tong += 0
			print "angka"	
		if ord(masukan[i]) not in angka:
			bukan_tong += 1
			print "bukan"
		if bukan_tong == 0 :
			bukan_angka = False
		if bukan_angka == True:
			masukan = prompt("Masukkan jumlah hari : ")	
		
masukan = int(masukan)	



tahun  = masukan / 365
bulan  = masukan % 365 / 30
minggu = masukan % 365 % 30 / 7
hari   = masukan % 365 % 30 % 7




print """%s hari = %s tahun %s bulan %s minggu %s hari  """ %(masukan,tahun, bulan, minggu, hari)



