(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 16) (str.to_re "]HJ")) (re.++ ((_ re.loop 5 7) (str.to_re "/3T")) (re.++ ((_ re.loop 4 14) (str.to_re "|RQ")) ((_ re.loop 3 6) (str.to_re "P")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 8) (str.to_re "S")) (re.++ ((_ re.loop 2 12) (str.to_re "e#J")) (re.++ ((_ re.loop 1 20) (str.to_re "q|")) ((_ re.loop 3 11) (str.to_re "'")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 5) (str.to_re "FH")) (re.++ ((_ re.loop 1 18) (str.to_re "UG")) (re.++ ((_ re.loop 5 15) (str.to_re "K(f")) ((_ re.loop 2 7) (str.to_re "a%&")))))) ((_ re.loop 0 2) (re.++ ((_ re.loop 5 10) (str.to_re "?")) (re.++ ((_ re.loop 2 5) (str.to_re "S.")) (re.++ ((_ re.loop 0 15) (str.to_re "}M")) ((_ re.loop 5 19) (str.to_re "NL")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
