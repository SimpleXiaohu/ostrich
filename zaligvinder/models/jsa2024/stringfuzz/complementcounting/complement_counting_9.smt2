(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 8 938) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "\u0022,") (re.union (str.to_re "s") (str.to_re "+")))) (re.++ (re.union (str.to_re "P") (re.union (str.to_re "v!") (re.union (str.to_re "w") (str.to_re "p")))) (re.++ (re.union (str.to_re "BT_") (re.union (str.to_re "0[j") (re.union (str.to_re "0") (str.to_re "eUr")))) (re.union (str.to_re "8") (re.union (str.to_re "YL") (re.union (str.to_re "T~") (str.to_re "4<n")))))))) (re.++ ((_ re.loop 9 298) (re.++ (re.union (str.to_re "P,") (re.union (str.to_re "XmW") (re.union (str.to_re "+") (str.to_re "^")))) (re.++ (re.union (str.to_re "\u0022=y") (re.union (str.to_re "`!") (re.union (str.to_re "g]") (str.to_re "1")))) (re.++ (re.union (str.to_re "9>") (re.union (str.to_re "B") (re.union (str.to_re "8A") (str.to_re "1;")))) (re.union (str.to_re "Na/") (re.union (str.to_re "+:[") (re.union (str.to_re "K") (str.to_re "Ub")))))))) (re.++ ((_ re.loop 2 175) (re.++ (re.union (str.to_re "olD") (re.union (str.to_re "e") (re.union (str.to_re "/+") (str.to_re "hpy")))) (re.++ (re.union (str.to_re "}*") (re.union (str.to_re "R59") (re.union (str.to_re "SE") (str.to_re ">{A")))) (re.++ (re.union (str.to_re "kz") (re.union (str.to_re "Ku") (re.union (str.to_re "$") (str.to_re "]I;")))) (re.union (str.to_re "9") (re.union (str.to_re "Dn=") (re.union (str.to_re "v,") (str.to_re "jQ{")))))))) ((_ re.loop 20 426) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "X") (re.union (str.to_re "?") (str.to_re "'&")))) (re.++ (re.union (str.to_re "f") (re.union (str.to_re "Q,") (re.union (str.to_re "#") (str.to_re "[=%")))) (re.++ (re.union (str.to_re "=") (re.union (str.to_re "Mf") (re.union (str.to_re ";ql") (str.to_re "1>s")))) (re.union (str.to_re "J*") (re.union (str.to_re "3\u0022G") (re.union (str.to_re ";") (str.to_re "vK"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 10 47) (re.++ (re.union (str.to_re "O)o") (re.union (str.to_re "~") (re.union (str.to_re "G&'") (str.to_re "O")))) (re.++ (re.union (str.to_re "N") (re.union (str.to_re "Ap") (re.union (str.to_re ">M") (str.to_re "_")))) (re.++ (re.union (str.to_re "{(H") (re.union (str.to_re "L") (re.union (str.to_re "Z") (str.to_re "[%A")))) (re.union (str.to_re "s") (re.union (str.to_re "[t4") (re.union (str.to_re "&") (str.to_re "$8")))))))) (re.++ ((_ re.loop 12 937) (re.++ (re.union (str.to_re "[.") (re.union (str.to_re "*2") (re.union (str.to_re "OO") (str.to_re "i>")))) (re.++ (re.union (str.to_re "qCo") (re.union (str.to_re "c") (re.union (str.to_re "G_Y") (str.to_re "w#")))) (re.++ (re.union (str.to_re "Fa") (re.union (str.to_re "(") (re.union (str.to_re "Lp") (str.to_re ">q")))) (re.union (str.to_re "(&r") (re.union (str.to_re "e3") (re.union (str.to_re "L") (str.to_re ";")))))))) (re.++ ((_ re.loop 6 367) (re.++ (re.union (str.to_re "Zo") (re.union (str.to_re "qH") (re.union (str.to_re ";8") (str.to_re "^")))) (re.++ (re.union (str.to_re "h") (re.union (str.to_re "BF") (re.union (str.to_re "X'") (str.to_re "n8")))) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "Zx") (re.union (str.to_re "{") (str.to_re ")")))) (re.union (str.to_re "w5") (re.union (str.to_re "Ubn") (re.union (str.to_re "N") (str.to_re "\\s5")))))))) ((_ re.loop 19 48) (re.++ (re.union (str.to_re "Pb") (re.union (str.to_re "w") (re.union (str.to_re "a^`") (str.to_re "o!M")))) (re.++ (re.union (str.to_re ".") (re.union (str.to_re "y") (re.union (str.to_re "~}") (str.to_re ">-9")))) (re.++ (re.union (str.to_re "q&") (re.union (str.to_re "us") (re.union (str.to_re "6Nf") (str.to_re "l")))) (re.union (str.to_re "aX") (re.union (str.to_re "+") (re.union (str.to_re "A\\") (str.to_re "="))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
