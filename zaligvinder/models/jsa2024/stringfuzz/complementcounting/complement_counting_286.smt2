(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 14 395) (re.++ (re.union (str.to_re "7p") (re.union (str.to_re "9") (re.union (str.to_re "v|Z") (str.to_re "A$;")))) (re.++ (re.union (str.to_re "3") (re.union (str.to_re "SYW") (re.union (str.to_re "3") (str.to_re "Q")))) (re.++ (re.union (str.to_re "Y") (re.union (str.to_re "J") (re.union (str.to_re "av") (str.to_re "$")))) (re.union (str.to_re "&") (re.union (str.to_re "/") (re.union (str.to_re "CGm") (str.to_re "Ko")))))))) (re.++ ((_ re.loop 17 562) (re.++ (re.union (str.to_re "o") (re.union (str.to_re "Y") (re.union (str.to_re "vt") (str.to_re "2_a")))) (re.++ (re.union (str.to_re "9e") (re.union (str.to_re "*!W") (re.union (str.to_re "'>E") (str.to_re "uT")))) (re.++ (re.union (str.to_re "u") (re.union (str.to_re "SW") (re.union (str.to_re "P") (str.to_re "ff")))) (re.union (str.to_re "ml>") (re.union (str.to_re ">s") (re.union (str.to_re "8b'") (str.to_re "w[")))))))) (re.++ ((_ re.loop 14 473) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "Az") (re.union (str.to_re "5\u0022b") (str.to_re "u}")))) (re.++ (re.union (str.to_re "-~6") (re.union (str.to_re "-X") (re.union (str.to_re ",e") (str.to_re "6R")))) (re.++ (re.union (str.to_re "Q>^") (re.union (str.to_re "0i<") (re.union (str.to_re "Vb[") (str.to_re "tq-")))) (re.union (str.to_re "/") (re.union (str.to_re "MP/") (re.union (str.to_re "p") (str.to_re "i")))))))) ((_ re.loop 10 266) (re.++ (re.union (str.to_re "]") (re.union (str.to_re "Q") (re.union (str.to_re "4O\\") (str.to_re "0\\")))) (re.++ (re.union (str.to_re "B") (re.union (str.to_re "b>") (re.union (str.to_re "w3") (str.to_re ">\u0022\u0022")))) (re.++ (re.union (str.to_re "zF") (re.union (str.to_re "t.V") (re.union (str.to_re "p") (str.to_re "L")))) (re.union (str.to_re "t=b") (re.union (str.to_re "+_") (re.union (str.to_re "hV~") (str.to_re "r")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 2 394) (re.++ (re.union (str.to_re ":MU") (re.union (str.to_re "R") (re.union (str.to_re "sf") (str.to_re "1>8")))) (re.++ (re.union (str.to_re ")") (re.union (str.to_re "Ha5") (re.union (str.to_re "H") (str.to_re "lH")))) (re.++ (re.union (str.to_re ";j") (re.union (str.to_re "4") (re.union (str.to_re "&") (str.to_re ":")))) (re.union (str.to_re "Z") (re.union (str.to_re "o") (re.union (str.to_re "!*B") (str.to_re "n(u")))))))) (re.++ ((_ re.loop 10 634) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "ShB") (re.union (str.to_re "6") (str.to_re "(")))) (re.++ (re.union (str.to_re "g") (re.union (str.to_re "w") (re.union (str.to_re "WG") (str.to_re "&)")))) (re.++ (re.union (str.to_re "#j,") (re.union (str.to_re ",M") (re.union (str.to_re "g") (str.to_re "F>")))) (re.union (str.to_re "]=") (re.union (str.to_re "<KH") (re.union (str.to_re "])") (str.to_re "<~")))))))) (re.++ ((_ re.loop 9 211) (re.++ (re.union (str.to_re "3") (re.union (str.to_re "N") (re.union (str.to_re "{>i") (str.to_re "DP-")))) (re.++ (re.union (str.to_re "D") (re.union (str.to_re "G{") (re.union (str.to_re "hO") (str.to_re "j")))) (re.++ (re.union (str.to_re "+8c") (re.union (str.to_re "M5}") (re.union (str.to_re "q&]") (str.to_re ".Z7")))) (re.union (str.to_re "B") (re.union (str.to_re "cj") (re.union (str.to_re "e(5") (str.to_re "LK")))))))) ((_ re.loop 7 936) (re.++ (re.union (str.to_re "V") (re.union (str.to_re "{x") (re.union (str.to_re "~R") (str.to_re "\u0022)Z")))) (re.++ (re.union (str.to_re "o+e") (re.union (str.to_re "5Z4") (re.union (str.to_re "N") (str.to_re "(")))) (re.++ (re.union (str.to_re "(L3") (re.union (str.to_re "/a") (re.union (str.to_re "$hG") (str.to_re "C")))) (re.union (str.to_re "a") (re.union (str.to_re "*") (re.union (str.to_re "8{") (str.to_re "%G"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)