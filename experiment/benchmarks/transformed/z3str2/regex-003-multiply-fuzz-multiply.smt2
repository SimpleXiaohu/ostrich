(declare-const x String)
(assert (= x "AA::**aa>>--'''\x0c''\x0c'''@@55DD**ccddddeebbbb~~''gg::VVccBB``))''aaBB,,jj$$//##WWUUyy33WW!!yy""""??ooGGcc??ppTTGGUURRuu||xxddeemmrrDDBBBB**==TTcc>>FFbbTTddeeee"))
(assert (str.in.re x (re.+ (re.union (str.to.re "'''\x0c''\x0c'''((ww44>>??9977OOkkllaaUU<<''55>>%%::IIppdd") (str.to.re "@@qqTT")))))
(check-sat)
(get-model)