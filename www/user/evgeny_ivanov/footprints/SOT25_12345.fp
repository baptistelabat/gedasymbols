# author: Evgeny Ivanov
# dist-license: GPL
# use-license: unlimited

#SOT25, renumbered pins (ADCMP600)
Element["" "SMT transistor, 5 pins" "" "SOT25" 2708 11708 11800 -11000 3 100 ""]
(
	Pad[0 -800 0 800 2400 3000 3000 "" "4" "square,edge2"]
	Pad[7800 -800 7800 800 2400 3000 3000 "" "5" "square,edge2"]
	Pad[7800 -9000 7800 -7400 2400 3000 3000 "" "1" "square"]
	Pad[3900 -9000 3900 -7400 2400 3000 3000 "" "2" "square"]
	Pad[0 -9000 0 -7400 2400 3000 3000 "" "3" "square"]
	ElementLine [-2000 -11000 -2000 2900 1000]
	ElementLine [-2000 2900 9800 2900 1000]
	ElementLine [9800 2900 9800 -11000 1000]
	ElementLine [9800 -11000 -2000 -11000 1000]

	)
