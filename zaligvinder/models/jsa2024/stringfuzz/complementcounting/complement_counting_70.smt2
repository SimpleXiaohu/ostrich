(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 12 319) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "P8H") (re.union (str.to_re "Ea4") (str.to_re "-$")))) (re.++ (re.union (str.to_re "5R") (re.union (str.to_re "~@") (re.union (str.to_re "]hU") (str.to_re "Dk")))) (re.++ (re.union (str.to_re "VQ") (re.union (str.to_re "Z") (re.union (str.to_re "q#") (str.to_re "Or")))) (re.union (str.to_re "Wc") (re.union (str.to_re "QI") (re.union (str.to_re "]@q") (str.to_re "?R")))))))) (re.++ ((_ re.loop 9 272) (re.++ (re.union (str.to_re "f") (re.union (str.to_re "IzE") (re.union (str.to_re "_:") (str.to_re "KiY")))) (re.++ (re.union (str.to_re "goQ") (re.union (str.to_re "h") (re.union (str.to_re ")a3") (str.to_re "1")))) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "hL") (re.union (str.to_re ",h") (str.to_re "8")))) (re.union (str.to_re "q") (re.union (str.to_re "Kv") (re.union (str.to_re "]s/") (str.to_re "PU:")))))))) (re.++ ((_ re.loop 5 241) (re.++ (re.union (str.to_re "V") (re.union (str.to_re "V") (re.union (str.to_re "=!\u0022") (str.to_re "RHf")))) (re.++ (re.union (str.to_re "1>") (re.union (str.to_re "^S") (re.union (str.to_re ";") (str.to_re "{")))) (re.++ (re.union (str.to_re "T") (re.union (str.to_re "X0_") (re.union (str.to_re "&CC") (str.to_re "Y")))) (re.union (str.to_re "G3") (re.union (str.to_re "\u0022") (re.union (str.to_re "ZmY") (str.to_re "9")))))))) ((_ re.loop 13 337) (re.++ (re.union (str.to_re ",%") (re.union (str.to_re "6B") (re.union (str.to_re "C=") (str.to_re "QO")))) (re.++ (re.union (str.to_re "5k}") (re.union (str.to_re "j,N") (re.union (str.to_re "(K") (str.to_re ",sc")))) (re.++ (re.union (str.to_re "KGa") (re.union (str.to_re "e") (re.union (str.to_re "{<") (str.to_re "NXD")))) (re.union (str.to_re ")L") (re.union (str.to_re "*]C") (re.union (str.to_re "=") (str.to_re "\u0022"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 2 392) (re.++ (re.union (str.to_re "%q") (re.union (str.to_re "Y$") (re.union (str.to_re "~") (str.to_re "%2F")))) (re.++ (re.union (str.to_re "[cs") (re.union (str.to_re "M") (re.union (str.to_re "@f") (str.to_re "u")))) (re.++ (re.union (str.to_re "S&}") (re.union (str.to_re "Z1:") (re.union (str.to_re "g") (str.to_re "&G")))) (re.union (str.to_re "XY") (re.union (str.to_re "IQ") (re.union (str.to_re "%") (str.to_re "$D")))))))) (re.++ ((_ re.loop 17 287) (re.++ (re.union (str.to_re "@=R") (re.union (str.to_re "X_") (re.union (str.to_re "o5") (str.to_re "3P#")))) (re.++ (re.union (str.to_re "[G") (re.union (str.to_re ")p") (re.union (str.to_re "~<Q") (str.to_re "J")))) (re.++ (re.union (str.to_re "<a`") (re.union (str.to_re "1") (re.union (str.to_re "bv") (str.to_re "6")))) (re.union (str.to_re "i") (re.union (str.to_re "(aY") (re.union (str.to_re "1^N") (str.to_re "t")))))))) (re.++ ((_ re.loop 14 343) (re.++ (re.union (str.to_re "*") (re.union (str.to_re "^") (re.union (str.to_re "qn.") (str.to_re "?G")))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "5") (re.union (str.to_re "[i\\") (str.to_re "\\,&")))) (re.++ (re.union (str.to_re ",") (re.union (str.to_re "\u0022") (re.union (str.to_re "U") (str.to_re ":")))) (re.union (str.to_re "z") (re.union (str.to_re "=+0") (re.union (str.to_re "K") (str.to_re "B'")))))))) ((_ re.loop 8 454) (re.++ (re.union (str.to_re "hsi") (re.union (str.to_re "po4") (re.union (str.to_re "d4.") (str.to_re "\\U@")))) (re.++ (re.union (str.to_re "I4") (re.union (str.to_re "Q`$") (re.union (str.to_re "em") (str.to_re "a")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "P") (re.union (str.to_re "oa") (str.to_re "GJ")))) (re.union (str.to_re "~") (re.union (str.to_re "dyk") (re.union (str.to_re "bO)") (str.to_re "<"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
