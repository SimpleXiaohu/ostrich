(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 5 11) (str.to_re "Dv")) (re.++ ((_ re.loop 1 17) (str.to_re "@")) (re.++ ((_ re.loop 2 14) (str.to_re "?")) ((_ re.loop 0 8) (str.to_re "Fd")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 18) (str.to_re "M_L")) (re.++ ((_ re.loop 2 8) (str.to_re "1")) (re.++ ((_ re.loop 0 17) (str.to_re "r")) ((_ re.loop 2 8) (str.to_re "A")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 18) (str.to_re "V7I")) (re.++ ((_ re.loop 2 10) (str.to_re "j]^")) (re.++ ((_ re.loop 2 19) (str.to_re "a})")) ((_ re.loop 2 5) (str.to_re "^Q4")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 2 13) (str.to_re "w^j")) (re.++ ((_ re.loop 0 9) (str.to_re "ln")) (re.++ ((_ re.loop 5 8) (str.to_re "#7[")) ((_ re.loop 4 10) (str.to_re "*J")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)