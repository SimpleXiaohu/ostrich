(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 19 230) (re.++ (re.union (str.to_re "X") (re.union (str.to_re "J&k") (re.union (str.to_re "PQ") (str.to_re "_fK")))) (re.++ (re.union (str.to_re "(`") (re.union (str.to_re "T") (re.union (str.to_re "sz") (str.to_re "3$")))) (re.++ (re.union (str.to_re "]?") (re.union (str.to_re "aN") (re.union (str.to_re "I|") (str.to_re "r;")))) (re.union (str.to_re "l") (re.union (str.to_re "|") (re.union (str.to_re "K") (str.to_re "8-O")))))))) (re.++ ((_ re.loop 7 324) (re.++ (re.union (str.to_re "J'") (re.union (str.to_re "B<I") (re.union (str.to_re "B-") (str.to_re "'{}")))) (re.++ (re.union (str.to_re "v)") (re.union (str.to_re "WZ") (re.union (str.to_re "vBl") (str.to_re "7")))) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "#") (re.union (str.to_re "rEW") (str.to_re "3")))) (re.union (str.to_re "fJ") (re.union (str.to_re "1BW") (re.union (str.to_re "-") (str.to_re "b")))))))) (re.++ ((_ re.loop 10 305) (re.++ (re.union (str.to_re "+7") (re.union (str.to_re "S!") (re.union (str.to_re "a") (str.to_re "<")))) (re.++ (re.union (str.to_re "s") (re.union (str.to_re "E@") (re.union (str.to_re "%") (str.to_re "ON")))) (re.++ (re.union (str.to_re "&jO") (re.union (str.to_re "w") (re.union (str.to_re "C") (str.to_re "\u0022gN")))) (re.union (str.to_re "f]\\") (re.union (str.to_re "Q") (re.union (str.to_re "I") (str.to_re "fRi")))))))) ((_ re.loop 3 526) (re.++ (re.union (str.to_re "d") (re.union (str.to_re "5") (re.union (str.to_re "C=") (str.to_re "j")))) (re.++ (re.union (str.to_re "H") (re.union (str.to_re "\\c=") (re.union (str.to_re "pt#") (str.to_re ";")))) (re.++ (re.union (str.to_re "SMT") (re.union (str.to_re "fv") (re.union (str.to_re "/") (str.to_re "XK9")))) (re.union (str.to_re "%(") (re.union (str.to_re "-4") (re.union (str.to_re "Wu") (str.to_re "{3m"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 14 878) (re.++ (re.union (str.to_re "]v") (re.union (str.to_re "+45") (re.union (str.to_re "B") (str.to_re "qW")))) (re.++ (re.union (str.to_re "sm") (re.union (str.to_re "}") (re.union (str.to_re "`") (str.to_re "e")))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re "n=") (re.union (str.to_re "b") (str.to_re "ZV")))) (re.union (str.to_re "sd>") (re.union (str.to_re "?x") (re.union (str.to_re ";~") (str.to_re "o")))))))) (re.++ ((_ re.loop 20 277) (re.++ (re.union (str.to_re ")") (re.union (str.to_re "zs") (re.union (str.to_re "y[i") (str.to_re "uLF")))) (re.++ (re.union (str.to_re "AS|") (re.union (str.to_re "oz") (re.union (str.to_re "'m.") (str.to_re "'FG")))) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "YKO") (re.union (str.to_re "NH*") (str.to_re "eyH")))) (re.union (str.to_re "G") (re.union (str.to_re "[") (re.union (str.to_re "Z") (str.to_re "w8a")))))))) (re.++ ((_ re.loop 18 74) (re.++ (re.union (str.to_re "1V6") (re.union (str.to_re "knt") (re.union (str.to_re "'.d") (str.to_re "L")))) (re.++ (re.union (str.to_re "'") (re.union (str.to_re "[S") (re.union (str.to_re "#J") (str.to_re "B+]")))) (re.++ (re.union (str.to_re "2") (re.union (str.to_re "@HY") (re.union (str.to_re "J") (str.to_re "b$")))) (re.union (str.to_re "gQc") (re.union (str.to_re "CYQ") (re.union (str.to_re "h}8") (str.to_re "6")))))))) ((_ re.loop 18 673) (re.++ (re.union (str.to_re "G?") (re.union (str.to_re "5%") (re.union (str.to_re "K#") (str.to_re "VQ")))) (re.++ (re.union (str.to_re "QH/") (re.union (str.to_re "v") (re.union (str.to_re "L") (str.to_re "[['")))) (re.++ (re.union (str.to_re "D") (re.union (str.to_re "p}!") (re.union (str.to_re "I") (str.to_re "+")))) (re.union (str.to_re "u") (re.union (str.to_re "Khz") (re.union (str.to_re "W7N") (str.to_re "d|"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)