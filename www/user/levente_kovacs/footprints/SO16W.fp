# author: Levente Kovacs
# email: lekovacs@interware.hu
# dist-license: GPL 2
# use-license: unlimited

Element["" "" "U1" "SO16W" 145000 45000 15000 15000 0 100 ""]
(
	Pad[34400 0 39400 0 2000 3000 2000 "" "16" "square,edge2"]
	Pad[34400 5000 39400 5000 2000 3000 2000 "" "15" "square,edge2"]
	Pad[34400 10000 39400 10000 2000 3000 2000 "" "14" "square,edge2"]
	Pad[34400 15000 39400 15000 2000 3000 2000 "" "13" "square,edge2"]
	Pad[34400 20000 39400 20000 2000 3000 2000 "" "12" "square,edge2"]
	Pad[34400 25000 39400 25000 2000 3000 2000 "" "11" "square,edge2"]
	Pad[34400 30000 39400 30000 2000 3000 2000 "" "10" "square,edge2"]
	Pad[34400 35000 39400 35000 2000 3000 2000 "" "9" "square,edge2"]
	Pad[-2500 35000 2500 35000 2000 3000 2000 "" "8" "square"]
	Pad[-2500 30000 2500 30000 2000 3000 2000 "" "7" "square"]
	Pad[-2500 25000 2500 25000 2000 3000 2000 "" "6" "square"]
	Pad[-2500 20000 2500 20000 2000 3000 2000 "" "5" "square"]
	Pad[-2500 15000 2500 15000 2000 3000 2000 "" "4" "square"]
	Pad[-2500 10000 2500 10000 2000 3000 2000 "" "3" "square"]
	Pad[-2500 5000 2500 5000 2000 3000 2000 "" "2" "square"]
	Pad[-2500 0 2500 0 2000 3000 2000 "" "1" ""]
	ElementLine [2500 -2500 2500 37500 1000]
	ElementLine [2500 37500 34400 37500 1000]
	ElementLine [34400 37500 34400 -2500 1000]
	ElementLine [2500 -2500 15900 -2500 1000]
	ElementLine [20900 -2500 34400 -2500 1000]
	ElementArc [18400 -2500 2500 2500 0 180 1000]

	)
