(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 6) (str.to_re "h")) (re.++ ((_ re.loop 3 8) (str.to_re "&7h")) (re.++ ((_ re.loop 2 15) (str.to_re "S")) ((_ re.loop 3 7) (str.to_re "6D")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 12) (str.to_re "mR")) (re.++ ((_ re.loop 2 13) (str.to_re "}")) (re.++ ((_ re.loop 1 15) (str.to_re "Yu/")) ((_ re.loop 0 8) (str.to_re "1")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 4 6) (str.to_re "[uZ")) (re.++ ((_ re.loop 5 8) (str.to_re "Z8")) (re.++ ((_ re.loop 3 13) (str.to_re "JoN")) ((_ re.loop 2 5) (str.to_re "]")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 2 9) (str.to_re "Nu")) (re.++ ((_ re.loop 0 17) (str.to_re "q")) (re.++ ((_ re.loop 1 18) (str.to_re "1")) ((_ re.loop 1 18) (str.to_re "i")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
