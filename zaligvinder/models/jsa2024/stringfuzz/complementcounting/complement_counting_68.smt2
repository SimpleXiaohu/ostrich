(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 20 69) (re.++ (re.union (str.to_re "I5C") (re.union (str.to_re "WNd") (re.union (str.to_re "yR") (str.to_re "'Z")))) (re.++ (re.union (str.to_re "b<6") (re.union (str.to_re "h>") (re.union (str.to_re "hyH") (str.to_re "rP.")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "iKL") (re.union (str.to_re "Kjc") (str.to_re "KHx")))) (re.union (str.to_re "9") (re.union (str.to_re "X") (re.union (str.to_re "V") (str.to_re "{")))))))) (re.++ ((_ re.loop 2 757) (re.++ (re.union (str.to_re "WZr") (re.union (str.to_re "rRY") (re.union (str.to_re "D") (str.to_re "sW")))) (re.++ (re.union (str.to_re "Q") (re.union (str.to_re "n") (re.union (str.to_re "2*") (str.to_re "@_")))) (re.++ (re.union (str.to_re "=") (re.union (str.to_re "C:Y") (re.union (str.to_re "b//") (str.to_re "AX")))) (re.union (str.to_re "_Z:") (re.union (str.to_re "ws") (re.union (str.to_re "C'") (str.to_re "dwI")))))))) (re.++ ((_ re.loop 4 417) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "pV") (re.union (str.to_re "X/") (str.to_re "N[w")))) (re.++ (re.union (str.to_re "U%+") (re.union (str.to_re "B") (re.union (str.to_re "f") (str.to_re "CF<")))) (re.++ (re.union (str.to_re "Yg") (re.union (str.to_re "\\") (re.union (str.to_re "*}W") (str.to_re ";6")))) (re.union (str.to_re "4") (re.union (str.to_re "%") (re.union (str.to_re "!=") (str.to_re "s")))))))) ((_ re.loop 17 89) (re.++ (re.union (str.to_re "u") (re.union (str.to_re ";W") (re.union (str.to_re "CU") (str.to_re "E8")))) (re.++ (re.union (str.to_re "\u0022") (re.union (str.to_re "u") (re.union (str.to_re "WR") (str.to_re "L")))) (re.++ (re.union (str.to_re "Q") (re.union (str.to_re "m7") (re.union (str.to_re ";") (str.to_re "8[+")))) (re.union (str.to_re "6F") (re.union (str.to_re "(F^") (re.union (str.to_re "{%") (str.to_re "O"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 6 59) (re.++ (re.union (str.to_re "D") (re.union (str.to_re "[") (re.union (str.to_re "iM\u0022") (str.to_re "1")))) (re.++ (re.union (str.to_re "r`") (re.union (str.to_re "+u") (re.union (str.to_re "'") (str.to_re "u")))) (re.++ (re.union (str.to_re "\u0022") (re.union (str.to_re "*") (re.union (str.to_re "S#m") (str.to_re "0x<")))) (re.union (str.to_re "U_h") (re.union (str.to_re "su") (re.union (str.to_re "pD") (str.to_re "B0")))))))) (re.++ ((_ re.loop 1 670) (re.++ (re.union (str.to_re "s") (re.union (str.to_re ">/") (re.union (str.to_re "uZO") (str.to_re "MC")))) (re.++ (re.union (str.to_re "yv") (re.union (str.to_re "W") (re.union (str.to_re "&w") (str.to_re "\\iI")))) (re.++ (re.union (str.to_re "@b") (re.union (str.to_re "gkV") (re.union (str.to_re "Y") (str.to_re "}")))) (re.union (str.to_re "q") (re.union (str.to_re "p") (re.union (str.to_re ",") (str.to_re "e-!")))))))) (re.++ ((_ re.loop 16 836) (re.++ (re.union (str.to_re "PO`") (re.union (str.to_re "O#h") (re.union (str.to_re "4my") (str.to_re "]]")))) (re.++ (re.union (str.to_re "-<") (re.union (str.to_re "}") (re.union (str.to_re "d") (str.to_re "4")))) (re.++ (re.union (str.to_re "v5") (re.union (str.to_re "o") (re.union (str.to_re "C") (str.to_re "KOG")))) (re.union (str.to_re "64") (re.union (str.to_re "n4$") (re.union (str.to_re "Qw") (str.to_re "cM")))))))) ((_ re.loop 5 456) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "9") (re.union (str.to_re "Rk") (str.to_re "'>")))) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "ZD@") (re.union (str.to_re "{\u0022`") (str.to_re "m*O")))) (re.++ (re.union (str.to_re "W") (re.union (str.to_re "MI#") (re.union (str.to_re "nL") (str.to_re "($")))) (re.union (str.to_re "]") (re.union (str.to_re "A7w") (re.union (str.to_re "!") (str.to_re "5"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)