(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 15) (str.to_re "QS")) (re.++ ((_ re.loop 4 14) (str.to_re "O6")) (re.++ ((_ re.loop 4 9) (str.to_re "Xo")) ((_ re.loop 0 15) (str.to_re "_&")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 0 15) (str.to_re "Xc/")) (re.++ ((_ re.loop 3 18) (str.to_re "x")) (re.++ ((_ re.loop 1 19) (str.to_re "]&")) ((_ re.loop 1 10) (str.to_re "U9")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 4 9) (str.to_re "y")) (re.++ ((_ re.loop 1 19) (str.to_re "4")) (re.++ ((_ re.loop 1 19) (str.to_re "h}.")) ((_ re.loop 0 17) (str.to_re "Z?")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 2 10) (str.to_re "J")) (re.++ ((_ re.loop 1 6) (str.to_re "+Bp")) (re.++ ((_ re.loop 2 12) (str.to_re "u")) ((_ re.loop 0 10) (str.to_re "2")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)