(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 17) (str.to_re "me")) (re.++ ((_ re.loop 2 14) (str.to_re "9Zp")) (re.++ ((_ re.loop 1 20) (str.to_re "M5")) ((_ re.loop 0 5) (str.to_re ")")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 17) (str.to_re "4LX")) (re.++ ((_ re.loop 0 16) (str.to_re "3")) (re.++ ((_ re.loop 3 5) (str.to_re "y6y")) ((_ re.loop 1 5) (str.to_re ";")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 1 5) (str.to_re "QK")) (re.++ ((_ re.loop 0 6) (str.to_re "D")) (re.++ ((_ re.loop 1 9) (str.to_re "F")) ((_ re.loop 2 15) (str.to_re "_9")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 3 15) (str.to_re "z'")) (re.++ ((_ re.loop 2 14) (str.to_re "F")) (re.++ ((_ re.loop 5 19) (str.to_re "A%")) ((_ re.loop 0 5) (str.to_re "w")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
