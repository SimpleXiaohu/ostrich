(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 17) (str.to_re "_")) (re.++ ((_ re.loop 1 19) (str.to_re "K")) (re.++ ((_ re.loop 2 6) (str.to_re "/g1")) ((_ re.loop 4 18) (str.to_re "pK")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 12) (str.to_re "D&")) (re.++ ((_ re.loop 0 10) (str.to_re "E[")) (re.++ ((_ re.loop 0 8) (str.to_re "~#")) ((_ re.loop 3 14) (str.to_re "Lx")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 2 17) (str.to_re "jrG")) (re.++ ((_ re.loop 1 10) (str.to_re "e)Y")) (re.++ ((_ re.loop 4 9) (str.to_re "{")) ((_ re.loop 3 7) (str.to_re "2o\\")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 0 11) (str.to_re "hk")) (re.++ ((_ re.loop 5 5) (str.to_re "+Xt")) (re.++ ((_ re.loop 4 15) (str.to_re "H(t")) ((_ re.loop 4 8) (str.to_re "Vs$")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
