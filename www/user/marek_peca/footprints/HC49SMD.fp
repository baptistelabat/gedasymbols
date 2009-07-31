# author: Marek Peca
# email: mp@duch.cz
# dist-license: GPL
# use-license: ask

Element[0x00000000 "" "" "" 85000 59000 0 0 0 100 0x00000000]
(
	Pin[-10000 0 6000 3000 6600 2000 "" "1" 0x00004001]
	Pin[10000 0 6000 3000 6600 2000 "" "2" 0x00004001]
	Pad[-21000 0 -11000 0 8000 2000 10000 "" "1" 0x00000100]
	Pad[11000 0 21000 0 8000 2000 10000 "" "2" 0x00004100]
	ElementLine [-25000 -9000 -25000 9000 1000]
	ElementLine [-25000 9000 25000 9000 1000]
	ElementLine [-10000 -5000 10000 -5000 1000]
	ElementLine [-25000 -9000 25000 -9000 1000]
	ElementLine [25000 -9000 25000 9000 1000]
	ElementLine [-10000 5000 10000 5000 1000]
	ElementArc [-10000 0 5000 5000 270 180 1000]
	ElementArc [10000 0 5000 5000 90 180 1000]

	)