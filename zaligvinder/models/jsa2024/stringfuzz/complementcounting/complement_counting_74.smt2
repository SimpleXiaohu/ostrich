(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 18 946) (re.++ (re.union (str.to_re "/[M") (re.union (str.to_re "2\u0022K") (re.union (str.to_re "@h") (str.to_re "P;V")))) (re.++ (re.union (str.to_re "48.") (re.union (str.to_re "|") (re.union (str.to_re ".y") (str.to_re "O5k")))) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "lm:") (re.union (str.to_re "3") (str.to_re "e")))) (re.union (str.to_re "og4") (re.union (str.to_re "g") (re.union (str.to_re ".bn") (str.to_re "4YI")))))))) (re.++ ((_ re.loop 15 879) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "3v8") (re.union (str.to_re "4}2") (str.to_re "|=")))) (re.++ (re.union (str.to_re "*A") (re.union (str.to_re "F") (re.union (str.to_re "bd") (str.to_re "/#")))) (re.++ (re.union (str.to_re "_") (re.union (str.to_re "bI|") (re.union (str.to_re "co(") (str.to_re "L")))) (re.union (str.to_re "T") (re.union (str.to_re "T(4") (re.union (str.to_re "W") (str.to_re "*P")))))))) (re.++ ((_ re.loop 6 810) (re.++ (re.union (str.to_re "!") (re.union (str.to_re "|") (re.union (str.to_re "Ne+") (str.to_re "TF")))) (re.++ (re.union (str.to_re "\\iE") (re.union (str.to_re "4RQ") (re.union (str.to_re "2;") (str.to_re "zB")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "'/") (re.union (str.to_re "?c") (str.to_re "p")))) (re.union (str.to_re "b") (re.union (str.to_re "V<") (re.union (str.to_re "Tv(") (str.to_re "(")))))))) ((_ re.loop 6 821) (re.++ (re.union (str.to_re "0Z") (re.union (str.to_re "o?") (re.union (str.to_re "{>") (str.to_re "p")))) (re.++ (re.union (str.to_re "nr") (re.union (str.to_re "&p") (re.union (str.to_re "\\") (str.to_re "(5")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "DT}") (re.union (str.to_re "+") (str.to_re "DU")))) (re.union (str.to_re "7") (re.union (str.to_re "DV") (re.union (str.to_re "aC{") (str.to_re "R_"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 2 999) (re.++ (re.union (str.to_re ";?") (re.union (str.to_re ":") (re.union (str.to_re "J:N") (str.to_re "f<")))) (re.++ (re.union (str.to_re "\\x") (re.union (str.to_re "X8") (re.union (str.to_re "l") (str.to_re "WnY")))) (re.++ (re.union (str.to_re "4yg") (re.union (str.to_re ";") (re.union (str.to_re "Ad") (str.to_re "IdI")))) (re.union (str.to_re "HEe") (re.union (str.to_re "1") (re.union (str.to_re "ns") (str.to_re "\u0022@u")))))))) (re.++ ((_ re.loop 5 562) (re.++ (re.union (str.to_re "M@|") (re.union (str.to_re "S!") (re.union (str.to_re "O") (str.to_re "'1j")))) (re.++ (re.union (str.to_re "[Tl") (re.union (str.to_re "<") (re.union (str.to_re "|") (str.to_re "B")))) (re.++ (re.union (str.to_re "e@L") (re.union (str.to_re "-T<") (re.union (str.to_re "y") (str.to_re "o")))) (re.union (str.to_re "EC") (re.union (str.to_re "2\\A") (re.union (str.to_re "'") (str.to_re "I")))))))) (re.++ ((_ re.loop 5 123) (re.++ (re.union (str.to_re "t") (re.union (str.to_re "R") (re.union (str.to_re "T") (str.to_re "L}C")))) (re.++ (re.union (str.to_re "ed") (re.union (str.to_re "|]s") (re.union (str.to_re "PGQ") (str.to_re "[a")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "l19") (re.union (str.to_re "j") (str.to_re "f!")))) (re.union (str.to_re "EI") (re.union (str.to_re "@}") (re.union (str.to_re "^i") (str.to_re "Sy")))))))) ((_ re.loop 1 413) (re.++ (re.union (str.to_re "pv") (re.union (str.to_re "U1I") (re.union (str.to_re "utM") (str.to_re "e$Y")))) (re.++ (re.union (str.to_re "<@") (re.union (str.to_re "W") (re.union (str.to_re "~4(") (str.to_re ",_")))) (re.++ (re.union (str.to_re "r:N") (re.union (str.to_re "u") (re.union (str.to_re "b?L") (str.to_re "IW5")))) (re.union (str.to_re "~le") (re.union (str.to_re "CF-") (re.union (str.to_re "K-7") (str.to_re "&"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
