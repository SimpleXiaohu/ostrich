;test regex (^(((([1-9])|([0][1-9])|([1-2][0-9])|(30))\-([A,a][P,p][R,r]|[J,j][U,u][N,n]|[S,s][E,e][P,p]|[N,n][O,o][V,v]))|((([1-9])|([0][1-9])|([1-2][0-9])|([3][0-1]))\-([J,j][A,a][N,n]|[M,m][A,a][R,r]|[M,m][A,a][Y,y]|[J,j][U,u][L,l]|[A,a][U,u][G,g]|[O,o][C,c][T,t]|[D,d][E,e][C,c])))\-[0-9]{4}$)|(^(([1-9])|([0][1-9])|([1][0-9])|([2][0-8]))\-([F,f][E,e][B,b])\-[0-9]{2}(([02468][1235679])|([13579][01345789]))$)|(^(([1-9])|([0][1-9])|([1][0-9])|([2][0-9]))\-([F,f][E,e][B,b])\-[0-9]{2}(([02468][048])|([13579][26]))$)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.union (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (re.range "1" "2") (re.range "0" "9"))) (str.to_re "30")) (re.++ (str.to_re "-") (re.union (re.union (re.union (re.++ (re.union (str.to_re "A") (re.union (str.to_re ",") (str.to_re "a"))) (re.++ (re.union (str.to_re "P") (re.union (str.to_re ",") (str.to_re "p"))) (re.union (str.to_re "R") (re.union (str.to_re ",") (str.to_re "r"))))) (re.++ (re.union (str.to_re "J") (re.union (str.to_re ",") (str.to_re "j"))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re ",") (str.to_re "u"))) (re.union (str.to_re "N") (re.union (str.to_re ",") (str.to_re "n")))))) (re.++ (re.union (str.to_re "S") (re.union (str.to_re ",") (str.to_re "s"))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re ",") (str.to_re "e"))) (re.union (str.to_re "P") (re.union (str.to_re ",") (str.to_re "p")))))) (re.++ (re.union (str.to_re "N") (re.union (str.to_re ",") (str.to_re "n"))) (re.++ (re.union (str.to_re "O") (re.union (str.to_re ",") (str.to_re "o"))) (re.union (str.to_re "V") (re.union (str.to_re ",") (str.to_re "v")))))))) (re.++ (re.union (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.++ (str.to_re "-") (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.union (str.to_re "J") (re.union (str.to_re ",") (str.to_re "j"))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re ",") (str.to_re "a"))) (re.union (str.to_re "N") (re.union (str.to_re ",") (str.to_re "n"))))) (re.++ (re.union (str.to_re "M") (re.union (str.to_re ",") (str.to_re "m"))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re ",") (str.to_re "a"))) (re.union (str.to_re "R") (re.union (str.to_re ",") (str.to_re "r")))))) (re.++ (re.union (str.to_re "M") (re.union (str.to_re ",") (str.to_re "m"))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re ",") (str.to_re "a"))) (re.union (str.to_re "Y") (re.union (str.to_re ",") (str.to_re "y")))))) (re.++ (re.union (str.to_re "J") (re.union (str.to_re ",") (str.to_re "j"))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re ",") (str.to_re "u"))) (re.union (str.to_re "L") (re.union (str.to_re ",") (str.to_re "l")))))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re ",") (str.to_re "a"))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re ",") (str.to_re "u"))) (re.union (str.to_re "G") (re.union (str.to_re ",") (str.to_re "g")))))) (re.++ (re.union (str.to_re "O") (re.union (str.to_re ",") (str.to_re "o"))) (re.++ (re.union (str.to_re "C") (re.union (str.to_re ",") (str.to_re "c"))) (re.union (str.to_re "T") (re.union (str.to_re ",") (str.to_re "t")))))) (re.++ (re.union (str.to_re "D") (re.union (str.to_re ",") (str.to_re "d"))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re ",") (str.to_re "e"))) (re.union (str.to_re "C") (re.union (str.to_re ",") (str.to_re "c"))))))))) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.++ (str.to_re "-") (re.++ (re.++ (re.union (str.to_re "F") (re.union (str.to_re ",") (str.to_re "f"))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re ",") (str.to_re "e"))) (re.union (str.to_re "B") (re.union (str.to_re ",") (str.to_re "b"))))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "02468") (str.to_re "1235679")) (re.++ (str.to_re "13579") (str.to_re "01345789"))))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ (re.++ (re.union (str.to_re "F") (re.union (str.to_re ",") (str.to_re "f"))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re ",") (str.to_re "e"))) (re.union (str.to_re "B") (re.union (str.to_re ",") (str.to_re "b"))))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "02468") (str.to_re "048")) (re.++ (str.to_re "13579") (str.to_re "26"))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)