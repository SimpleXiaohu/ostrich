(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 3 17) (str.to_re "N")) (re.++ ((_ re.loop 5 19) (str.to_re "7yV")) (re.++ ((_ re.loop 0 17) (str.to_re "e}]")) ((_ re.loop 4 11) (str.to_re "a{")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 7) (str.to_re "C5n")) (re.++ ((_ re.loop 4 17) (str.to_re "jZ8")) (re.++ ((_ re.loop 0 10) (str.to_re "ym")) ((_ re.loop 3 8) (str.to_re ".")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 10) (str.to_re "Zb")) (re.++ ((_ re.loop 3 11) (str.to_re "N9?")) (re.++ ((_ re.loop 3 19) (str.to_re "r")) ((_ re.loop 0 16) (str.to_re "aF")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 4 20) (str.to_re "rT(")) (re.++ ((_ re.loop 1 8) (str.to_re "R")) (re.++ ((_ re.loop 0 10) (str.to_re "Jwi")) ((_ re.loop 2 14) (str.to_re "A")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)