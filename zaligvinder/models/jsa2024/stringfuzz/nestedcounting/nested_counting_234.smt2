(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 2 8) (str.to_re "l}3")) (re.++ ((_ re.loop 2 18) (str.to_re "4%7")) (re.++ ((_ re.loop 3 14) (str.to_re ":e2")) ((_ re.loop 0 16) (str.to_re "q@l")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 2 19) (str.to_re "6!")) (re.++ ((_ re.loop 3 8) (str.to_re "[")) (re.++ ((_ re.loop 5 5) (str.to_re ":")) ((_ re.loop 4 8) (str.to_re "=,e")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 7) (str.to_re ".")) (re.++ ((_ re.loop 5 18) (str.to_re "M'+")) (re.++ ((_ re.loop 3 18) (str.to_re "=")) ((_ re.loop 1 18) (str.to_re "sKh")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 3 14) (str.to_re "a")) (re.++ ((_ re.loop 1 17) (str.to_re "@")) (re.++ ((_ re.loop 5 10) (str.to_re "0")) ((_ re.loop 5 6) (str.to_re "Z")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
