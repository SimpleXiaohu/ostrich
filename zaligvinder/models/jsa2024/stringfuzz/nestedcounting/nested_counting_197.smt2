(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 5 17) (str.to_re "(0=")) (re.++ ((_ re.loop 3 5) (str.to_re "I=s")) (re.++ ((_ re.loop 5 18) (str.to_re "_Pt")) ((_ re.loop 1 12) (str.to_re "[)")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 3 18) (str.to_re ":&")) (re.++ ((_ re.loop 5 14) (str.to_re "3?G")) (re.++ ((_ re.loop 1 18) (str.to_re "8")) ((_ re.loop 5 9) (str.to_re "ThV")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 0 7) (str.to_re "6`P")) (re.++ ((_ re.loop 0 12) (str.to_re "m")) (re.++ ((_ re.loop 5 9) (str.to_re "AU")) ((_ re.loop 3 6) (str.to_re "8$")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 3 17) (str.to_re "GBQ")) (re.++ ((_ re.loop 0 5) (str.to_re "P")) (re.++ ((_ re.loop 2 18) (str.to_re "(8")) ((_ re.loop 5 10) (str.to_re "qO")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
