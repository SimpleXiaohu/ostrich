(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 18 246) (re.++ (re.union (str.to_re "H") (re.union (str.to_re "~I") (re.union (str.to_re "X") (str.to_re "W:*")))) (re.++ (re.union (str.to_re "T") (re.union (str.to_re "k") (re.union (str.to_re "<{") (str.to_re "-1l")))) (re.++ (re.union (str.to_re "Su") (re.union (str.to_re "F{J") (re.union (str.to_re "XYT") (str.to_re "q(")))) (re.union (str.to_re "z") (re.union (str.to_re "s5b") (re.union (str.to_re "QH") (str.to_re "b}/")))))))) (re.++ ((_ re.loop 11 189) (re.++ (re.union (str.to_re "cnf") (re.union (str.to_re "pZ") (re.union (str.to_re ".e|") (str.to_re "I`")))) (re.++ (re.union (str.to_re "5z9") (re.union (str.to_re "V") (re.union (str.to_re "&") (str.to_re "~")))) (re.++ (re.union (str.to_re "DJ") (re.union (str.to_re "g;") (re.union (str.to_re "xu") (str.to_re "pw")))) (re.union (str.to_re "n") (re.union (str.to_re "fl") (re.union (str.to_re "Z") (str.to_re "Z?0")))))))) (re.++ ((_ re.loop 1 133) (re.++ (re.union (str.to_re "6") (re.union (str.to_re "c;R") (re.union (str.to_re "vA") (str.to_re "8")))) (re.++ (re.union (str.to_re "n") (re.union (str.to_re "_TD") (re.union (str.to_re "Qmz") (str.to_re "l")))) (re.++ (re.union (str.to_re "'\u0022") (re.union (str.to_re "DcU") (re.union (str.to_re "=Im") (str.to_re "N}")))) (re.union (str.to_re "Q") (re.union (str.to_re "m") (re.union (str.to_re "6[") (str.to_re "3")))))))) ((_ re.loop 1 996) (re.++ (re.union (str.to_re "'S") (re.union (str.to_re "ES") (re.union (str.to_re "$S'") (str.to_re "O")))) (re.++ (re.union (str.to_re "qq") (re.union (str.to_re "<l") (re.union (str.to_re "X") (str.to_re ";")))) (re.++ (re.union (str.to_re "+") (re.union (str.to_re "Hqm") (re.union (str.to_re "6+_") (str.to_re "B")))) (re.union (str.to_re "*N") (re.union (str.to_re "XJ") (re.union (str.to_re "\\") (str.to_re ".")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 8 89) (re.++ (re.union (str.to_re "vO") (re.union (str.to_re "HKm") (re.union (str.to_re "3Yo") (str.to_re "=")))) (re.++ (re.union (str.to_re "yb") (re.union (str.to_re ":Z") (re.union (str.to_re "Q") (str.to_re ")y")))) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "Q") (re.union (str.to_re "m8c") (str.to_re "2B")))) (re.union (str.to_re "n(/") (re.union (str.to_re "o") (re.union (str.to_re "(") (str.to_re "~4^")))))))) (re.++ ((_ re.loop 2 902) (re.++ (re.union (str.to_re "h7") (re.union (str.to_re "C\u0022") (re.union (str.to_re "|5a") (str.to_re "Ous")))) (re.++ (re.union (str.to_re "~") (re.union (str.to_re "mY") (re.union (str.to_re "\u0022") (str.to_re "dEN")))) (re.++ (re.union (str.to_re "h@") (re.union (str.to_re "Z:") (re.union (str.to_re "]") (str.to_re "dM")))) (re.union (str.to_re "W") (re.union (str.to_re "~FD") (re.union (str.to_re "Jl[") (str.to_re "n.=")))))))) (re.++ ((_ re.loop 10 659) (re.++ (re.union (str.to_re "aO") (re.union (str.to_re "O") (re.union (str.to_re "'A4") (str.to_re "}")))) (re.++ (re.union (str.to_re "G") (re.union (str.to_re "I0") (re.union (str.to_re "0p|") (str.to_re "`T")))) (re.++ (re.union (str.to_re "\\:") (re.union (str.to_re ",=U") (re.union (str.to_re "a") (str.to_re "o+")))) (re.union (str.to_re "Km") (re.union (str.to_re "2+") (re.union (str.to_re "c") (str.to_re "(I")))))))) ((_ re.loop 14 336) (re.++ (re.union (str.to_re "ZLT") (re.union (str.to_re "+") (re.union (str.to_re "MC") (str.to_re "9")))) (re.++ (re.union (str.to_re ".N`") (re.union (str.to_re "iG") (re.union (str.to_re "$") (str.to_re "tH")))) (re.++ (re.union (str.to_re "pE") (re.union (str.to_re "'") (re.union (str.to_re "Kp") (str.to_re "t")))) (re.union (str.to_re "$?s") (re.union (str.to_re "8") (re.union (str.to_re "v") (str.to_re "TKp"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
