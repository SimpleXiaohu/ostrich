(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 5) (str.to_re "4V")) (re.++ ((_ re.loop 5 13) (str.to_re "4^b")) (re.++ ((_ re.loop 4 16) (str.to_re "f")) ((_ re.loop 0 7) (str.to_re "\\)i")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 3 7) (str.to_re "<J")) (re.++ ((_ re.loop 4 14) (str.to_re "d")) (re.++ ((_ re.loop 4 13) (str.to_re "+")) ((_ re.loop 4 7) (str.to_re "L7")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 9) (str.to_re "Hu/")) (re.++ ((_ re.loop 3 18) (str.to_re "Sz")) (re.++ ((_ re.loop 2 12) (str.to_re "Y")) ((_ re.loop 5 15) (str.to_re "gz9")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 5 20) (str.to_re "h")) (re.++ ((_ re.loop 1 7) (str.to_re "'3!")) (re.++ ((_ re.loop 4 16) (str.to_re "Z6")) ((_ re.loop 2 15) (str.to_re "!")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
