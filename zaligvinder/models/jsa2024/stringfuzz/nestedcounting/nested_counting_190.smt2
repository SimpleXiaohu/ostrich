(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 11) (str.to_re "U&")) (re.++ ((_ re.loop 1 16) (str.to_re "ON")) (re.++ ((_ re.loop 2 8) (str.to_re "Ur")) ((_ re.loop 0 16) (str.to_re "2")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 13) (str.to_re "4(")) (re.++ ((_ re.loop 0 5) (str.to_re "2&r")) (re.++ ((_ re.loop 4 15) (str.to_re "\u0022")) ((_ re.loop 4 11) (str.to_re "V")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 3 16) (str.to_re "E")) (re.++ ((_ re.loop 2 16) (str.to_re "KG")) (re.++ ((_ re.loop 3 7) (str.to_re "f")) ((_ re.loop 4 18) (str.to_re "i#b")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 4 17) (str.to_re ")")) (re.++ ((_ re.loop 0 15) (str.to_re "i%-")) (re.++ ((_ re.loop 1 14) (str.to_re "7#~")) ((_ re.loop 3 18) (str.to_re "A}")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)