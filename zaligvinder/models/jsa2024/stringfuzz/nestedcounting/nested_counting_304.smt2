(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 19) (str.to_re "e")) (re.++ ((_ re.loop 2 15) (str.to_re "SA")) (re.++ ((_ re.loop 2 15) (str.to_re "<C+")) ((_ re.loop 5 10) (str.to_re "X*&")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 5 19) (str.to_re "IZ")) (re.++ ((_ re.loop 1 19) (str.to_re "0j")) (re.++ ((_ re.loop 0 12) (str.to_re "HC")) ((_ re.loop 3 16) (str.to_re "X:}")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 8) (str.to_re "R")) (re.++ ((_ re.loop 4 7) (str.to_re "6;5")) (re.++ ((_ re.loop 4 18) (str.to_re "P")) ((_ re.loop 0 16) (str.to_re "pO")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 0 20) (str.to_re "A")) (re.++ ((_ re.loop 5 7) (str.to_re "y")) (re.++ ((_ re.loop 1 17) (str.to_re "9")) ((_ re.loop 4 9) (str.to_re ")o")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
