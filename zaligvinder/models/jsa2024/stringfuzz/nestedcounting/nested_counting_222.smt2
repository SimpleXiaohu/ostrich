(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 6) (str.to_re "\u0022")) (re.++ ((_ re.loop 0 6) (str.to_re "?")) (re.++ ((_ re.loop 5 18) (str.to_re ")")) ((_ re.loop 2 11) (str.to_re "P,")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 13) (str.to_re "8")) (re.++ ((_ re.loop 0 5) (str.to_re "=")) (re.++ ((_ re.loop 3 20) (str.to_re "9|X")) ((_ re.loop 4 11) (str.to_re "zB")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 11) (str.to_re "es")) (re.++ ((_ re.loop 4 8) (str.to_re "P\u0022m")) (re.++ ((_ re.loop 5 6) (str.to_re "W")) ((_ re.loop 2 10) (str.to_re "[")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 4 16) (str.to_re "y")) (re.++ ((_ re.loop 5 12) (str.to_re "(x")) (re.++ ((_ re.loop 5 9) (str.to_re "E'")) ((_ re.loop 0 14) (str.to_re "o")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)