(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 4 19) (str.to_re "W")) (re.++ ((_ re.loop 2 6) (str.to_re "K2")) (re.++ ((_ re.loop 5 18) (str.to_re "dI")) ((_ re.loop 1 8) (str.to_re "oD")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 4 17) (str.to_re "x")) (re.++ ((_ re.loop 2 15) (str.to_re "Nzv")) (re.++ ((_ re.loop 1 13) (str.to_re ":")) ((_ re.loop 4 7) (str.to_re "pm)")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 1 12) (str.to_re "+2")) (re.++ ((_ re.loop 4 17) (str.to_re "M>")) (re.++ ((_ re.loop 3 12) (str.to_re "yM")) ((_ re.loop 4 10) (str.to_re "W0")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 2 6) (str.to_re "/-")) (re.++ ((_ re.loop 0 20) (str.to_re "EUR")) (re.++ ((_ re.loop 2 11) (str.to_re "d")) ((_ re.loop 2 16) (str.to_re "$Nm")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)