(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 16 211) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "r@I") (re.union (str.to_re "v") (str.to_re "P[")))) (re.++ (re.union (str.to_re "t") (re.union (str.to_re "h01") (re.union (str.to_re "yO") (str.to_re "PI")))) (re.++ (re.union (str.to_re "E[") (re.union (str.to_re ":\\L") (re.union (str.to_re "l*") (str.to_re "'Z1")))) (re.union (str.to_re "_\\U") (re.union (str.to_re "D") (re.union (str.to_re "K[c") (str.to_re "q")))))))) (re.++ ((_ re.loop 8 184) (re.++ (re.union (str.to_re "-l") (re.union (str.to_re "V") (re.union (str.to_re "B") (str.to_re "Oc")))) (re.++ (re.union (str.to_re ">") (re.union (str.to_re "C") (re.union (str.to_re "i") (str.to_re "5")))) (re.++ (re.union (str.to_re "r") (re.union (str.to_re "K[m") (re.union (str.to_re "Hg\u0022") (str.to_re ",+")))) (re.union (str.to_re "L") (re.union (str.to_re "N#u") (re.union (str.to_re "5v") (str.to_re "b6")))))))) (re.++ ((_ re.loop 12 653) (re.++ (re.union (str.to_re ")+") (re.union (str.to_re "MH") (re.union (str.to_re "^") (str.to_re "qoW")))) (re.++ (re.union (str.to_re "Y:1") (re.union (str.to_re "l9$") (re.union (str.to_re "0Z.") (str.to_re "QM")))) (re.++ (re.union (str.to_re ",7") (re.union (str.to_re "Sq^") (re.union (str.to_re "u\u0022+") (str.to_re ".")))) (re.union (str.to_re "m;[") (re.union (str.to_re "3_") (re.union (str.to_re "P") (str.to_re "TW")))))))) ((_ re.loop 6 671) (re.++ (re.union (str.to_re "Q{") (re.union (str.to_re "bg") (re.union (str.to_re "58") (str.to_re "Q")))) (re.++ (re.union (str.to_re "dD[") (re.union (str.to_re "A") (re.union (str.to_re ")%") (str.to_re "Y@")))) (re.++ (re.union (str.to_re "%V;") (re.union (str.to_re "Ig") (re.union (str.to_re "q^\u0022") (str.to_re ".")))) (re.union (str.to_re "=r") (re.union (str.to_re "Aa") (re.union (str.to_re "j") (str.to_re "g"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 14 316) (re.++ (re.union (str.to_re "n$") (re.union (str.to_re "Q*") (re.union (str.to_re "p") (str.to_re "|(q")))) (re.++ (re.union (str.to_re "<F") (re.union (str.to_re "3") (re.union (str.to_re "[") (str.to_re "7")))) (re.++ (re.union (str.to_re "4U") (re.union (str.to_re "sS") (re.union (str.to_re "[") (str.to_re "],L")))) (re.union (str.to_re "3O") (re.union (str.to_re "GU!") (re.union (str.to_re "n^J") (str.to_re "Fm")))))))) (re.++ ((_ re.loop 5 22) (re.++ (re.union (str.to_re "79") (re.union (str.to_re "+V") (re.union (str.to_re "Fht") (str.to_re "X!")))) (re.++ (re.union (str.to_re ";=V") (re.union (str.to_re ";U*") (re.union (str.to_re "W") (str.to_re "tL")))) (re.++ (re.union (str.to_re "B") (re.union (str.to_re "A8r") (re.union (str.to_re "O") (str.to_re "((")))) (re.union (str.to_re "0") (re.union (str.to_re "bo1") (re.union (str.to_re "2") (str.to_re "j}")))))))) (re.++ ((_ re.loop 6 789) (re.++ (re.union (str.to_re "|?") (re.union (str.to_re "1wS") (re.union (str.to_re "\u0022") (str.to_re "z")))) (re.++ (re.union (str.to_re "ll&") (re.union (str.to_re "?Z") (re.union (str.to_re "C") (str.to_re "n")))) (re.++ (re.union (str.to_re "lb") (re.union (str.to_re "}") (re.union (str.to_re "DuG") (str.to_re "h")))) (re.union (str.to_re "niv") (re.union (str.to_re "b-U") (re.union (str.to_re "L") (str.to_re "h")))))))) ((_ re.loop 0 344) (re.++ (re.union (str.to_re "W(~") (re.union (str.to_re "E") (re.union (str.to_re "I") (str.to_re ":")))) (re.++ (re.union (str.to_re "<jF") (re.union (str.to_re "YqT") (re.union (str.to_re "J") (str.to_re "[")))) (re.++ (re.union (str.to_re "-#") (re.union (str.to_re "ok+") (re.union (str.to_re "2@A") (str.to_re "E>F")))) (re.union (str.to_re "H") (re.union (str.to_re "mY") (re.union (str.to_re "q;") (str.to_re "u,k"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)