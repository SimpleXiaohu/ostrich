(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "O") (str.to.re "hIr'\t'")))))
(assert (= 1 (str.to.int x)))
(assert (not (= x "' 'U*^'\r''\x0b'L~qUeY}#EBh"":c~'\n'Y{dn=[]Px-&A-%OIL??5'\x0c'6@|F]}'~9_|{:,'\x0c'A'\r'g@FmgaK'\x0c'fErI""CmDb\\ciW%swRuTQ8h2}#~F'\x0b'?]joCGA#\\}5aM/' '=FU' 'X'\r'n7&qGU.q*]x{p2)N|oc!tk4,!<8[5mqzdPM*R'_!~>O#a")))
(assert (not (= x "2:bIAxwJ&hOb6D'\r'O/a")))
(check-sat)
(get-model)