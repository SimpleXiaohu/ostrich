(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 7 325) (re.++ (re.union (str.to_re "~\\") (re.union (str.to_re "sIX") (re.union (str.to_re "}4") (str.to_re "x")))) (re.++ (re.union (str.to_re "T") (re.union (str.to_re "Ze") (re.union (str.to_re ";7") (str.to_re "sq")))) (re.++ (re.union (str.to_re "@We") (re.union (str.to_re "2") (re.union (str.to_re "ny\\") (str.to_re ":Eq")))) (re.union (str.to_re "![H") (re.union (str.to_re "N") (re.union (str.to_re "%v") (str.to_re "J`c")))))))) (re.++ ((_ re.loop 9 534) (re.++ (re.union (str.to_re "2Cw") (re.union (str.to_re "nf") (re.union (str.to_re "x") (str.to_re "r7")))) (re.++ (re.union (str.to_re "Hn;") (re.union (str.to_re "c") (re.union (str.to_re ";c@") (str.to_re ",*t")))) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "=w") (re.union (str.to_re "|3") (str.to_re "GwC")))) (re.union (str.to_re "6[c") (re.union (str.to_re "mu") (re.union (str.to_re "5") (str.to_re "=")))))))) (re.++ ((_ re.loop 9 364) (re.++ (re.union (str.to_re "2:Y") (re.union (str.to_re "h{M") (re.union (str.to_re "%'") (str.to_re "5")))) (re.++ (re.union (str.to_re "(rz") (re.union (str.to_re "6q\\") (re.union (str.to_re "&S;") (str.to_re "'")))) (re.++ (re.union (str.to_re ">") (re.union (str.to_re "L") (re.union (str.to_re "|/") (str.to_re "?R'")))) (re.union (str.to_re "\u0022'") (re.union (str.to_re "mE") (re.union (str.to_re "5o") (str.to_re "i")))))))) ((_ re.loop 14 22) (re.++ (re.union (str.to_re "z") (re.union (str.to_re "i2") (re.union (str.to_re "()") (str.to_re "E!")))) (re.++ (re.union (str.to_re "lr") (re.union (str.to_re "W2") (re.union (str.to_re "$|") (str.to_re "nE.")))) (re.++ (re.union (str.to_re "uru") (re.union (str.to_re "&q)") (re.union (str.to_re "%;\\") (str.to_re "Ws")))) (re.union (str.to_re "WV") (re.union (str.to_re ",&!") (re.union (str.to_re "9%H") (str.to_re "#d!")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 15 165) (re.++ (re.union (str.to_re "5nu") (re.union (str.to_re "\u0022") (re.union (str.to_re "N+") (str.to_re "l5")))) (re.++ (re.union (str.to_re "--") (re.union (str.to_re "u1X") (re.union (str.to_re "$") (str.to_re "~E")))) (re.++ (re.union (str.to_re "8.") (re.union (str.to_re "n*}") (re.union (str.to_re "f") (str.to_re "w(l")))) (re.union (str.to_re "rn{") (re.union (str.to_re "5") (re.union (str.to_re "VC") (str.to_re "!9")))))))) (re.++ ((_ re.loop 0 36) (re.++ (re.union (str.to_re "h") (re.union (str.to_re "\u0022xO") (re.union (str.to_re "WU") (str.to_re "Z")))) (re.++ (re.union (str.to_re "D2") (re.union (str.to_re "L") (re.union (str.to_re "36") (str.to_re "{")))) (re.++ (re.union (str.to_re "3z") (re.union (str.to_re "w%") (re.union (str.to_re "k[C") (str.to_re "%Y")))) (re.union (str.to_re "\\;N") (re.union (str.to_re "X4x") (re.union (str.to_re "Cn") (str.to_re "ad_")))))))) (re.++ ((_ re.loop 11 576) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "\\},") (re.union (str.to_re "Ab") (str.to_re "C")))) (re.++ (re.union (str.to_re "1aM") (re.union (str.to_re "Q") (re.union (str.to_re ";+d") (str.to_re "&P")))) (re.++ (re.union (str.to_re "6") (re.union (str.to_re ">") (re.union (str.to_re ",") (str.to_re "s")))) (re.union (str.to_re "^") (re.union (str.to_re "e") (re.union (str.to_re "/") (str.to_re "B")))))))) ((_ re.loop 8 179) (re.++ (re.union (str.to_re "^") (re.union (str.to_re "weU") (re.union (str.to_re "2") (str.to_re "+")))) (re.++ (re.union (str.to_re "dtb") (re.union (str.to_re "A") (re.union (str.to_re "3") (str.to_re "^")))) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "qp") (re.union (str.to_re "2]") (str.to_re "w;n")))) (re.union (str.to_re "j") (re.union (str.to_re "'gD") (re.union (str.to_re "5g") (str.to_re "u'"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
