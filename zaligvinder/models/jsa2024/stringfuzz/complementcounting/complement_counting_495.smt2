(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 17 767) (re.++ (re.union (str.to_re "~0m") (re.union (str.to_re ".J-") (re.union (str.to_re "d") (str.to_re "<m")))) (re.++ (re.union (str.to_re "Ysu") (re.union (str.to_re "Ng") (re.union (str.to_re "nU") (str.to_re "Q")))) (re.++ (re.union (str.to_re "L,") (re.union (str.to_re "@a") (re.union (str.to_re "a'4") (str.to_re "9")))) (re.union (str.to_re "N#") (re.union (str.to_re "*JW") (re.union (str.to_re "k[") (str.to_re "g")))))))) (re.++ ((_ re.loop 19 328) (re.++ (re.union (str.to_re "|") (re.union (str.to_re "O") (re.union (str.to_re "f") (str.to_re "5")))) (re.++ (re.union (str.to_re "\u0022M5") (re.union (str.to_re "g") (re.union (str.to_re "Z") (str.to_re "H}")))) (re.++ (re.union (str.to_re "-J2") (re.union (str.to_re "`s-") (re.union (str.to_re "S") (str.to_re ";")))) (re.union (str.to_re "O'") (re.union (str.to_re "I6") (re.union (str.to_re "JX") (str.to_re "UO")))))))) (re.++ ((_ re.loop 5 565) (re.++ (re.union (str.to_re ")W") (re.union (str.to_re ":") (re.union (str.to_re "]") (str.to_re "-+")))) (re.++ (re.union (str.to_re ":9e") (re.union (str.to_re "m9") (re.union (str.to_re "yL") (str.to_re "9|B")))) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "((") (re.union (str.to_re "2") (str.to_re "A")))) (re.union (str.to_re "]") (re.union (str.to_re "?c") (re.union (str.to_re "[F9") (str.to_re "F")))))))) ((_ re.loop 0 140) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "F#g") (re.union (str.to_re "M[b") (str.to_re "<Ph")))) (re.++ (re.union (str.to_re "H|E") (re.union (str.to_re ">") (re.union (str.to_re "xk") (str.to_re "?zP")))) (re.++ (re.union (str.to_re "]") (re.union (str.to_re "^nr") (re.union (str.to_re "nW") (str.to_re "{")))) (re.union (str.to_re "/p") (re.union (str.to_re "+") (re.union (str.to_re "d") (str.to_re "j")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 5 65) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "dV") (re.union (str.to_re "o") (str.to_re "&2")))) (re.++ (re.union (str.to_re "G") (re.union (str.to_re "v") (re.union (str.to_re "S0+") (str.to_re "u<=")))) (re.++ (re.union (str.to_re "c") (re.union (str.to_re "0Ym") (re.union (str.to_re "^") (str.to_re "4")))) (re.union (str.to_re "f,") (re.union (str.to_re "jRN") (re.union (str.to_re "v") (str.to_re "~")))))))) (re.++ ((_ re.loop 11 971) (re.++ (re.union (str.to_re "2") (re.union (str.to_re "c9") (re.union (str.to_re "EhZ") (str.to_re "jMd")))) (re.++ (re.union (str.to_re ":-6") (re.union (str.to_re "&!U") (re.union (str.to_re ",ag") (str.to_re "Z")))) (re.++ (re.union (str.to_re "I2") (re.union (str.to_re ",`z") (re.union (str.to_re "Y") (str.to_re "j5[")))) (re.union (str.to_re "bym") (re.union (str.to_re "m") (re.union (str.to_re "fd0") (str.to_re ">z:")))))))) (re.++ ((_ re.loop 1 608) (re.++ (re.union (str.to_re "D5") (re.union (str.to_re "M8") (re.union (str.to_re "Iy'") (str.to_re "d~*")))) (re.++ (re.union (str.to_re "0_q") (re.union (str.to_re "G\u0022") (re.union (str.to_re "Ki") (str.to_re "]")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "KeL") (re.union (str.to_re "+") (str.to_re "Ce")))) (re.union (str.to_re "Y/") (re.union (str.to_re "x") (re.union (str.to_re ":&(") (str.to_re "CR")))))))) ((_ re.loop 11 664) (re.++ (re.union (str.to_re "^.[") (re.union (str.to_re "p") (re.union (str.to_re "$") (str.to_re "po")))) (re.++ (re.union (str.to_re "UKj") (re.union (str.to_re "l") (re.union (str.to_re "q}<") (str.to_re ".f")))) (re.++ (re.union (str.to_re "O1") (re.union (str.to_re "}") (re.union (str.to_re "h,") (str.to_re "d")))) (re.union (str.to_re ";_") (re.union (str.to_re "F1z") (re.union (str.to_re "L(e") (str.to_re "_#"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
