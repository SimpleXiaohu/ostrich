(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 12) (str.to_re "EwP")) (re.++ ((_ re.loop 0 7) (str.to_re "v")) (re.++ ((_ re.loop 3 9) (str.to_re "\\3")) ((_ re.loop 3 15) (str.to_re "B")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 4 16) (str.to_re "`")) (re.++ ((_ re.loop 4 16) (str.to_re "8k")) (re.++ ((_ re.loop 2 9) (str.to_re "m0-")) ((_ re.loop 0 20) (str.to_re "=w")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 14) (str.to_re "FE/")) (re.++ ((_ re.loop 2 17) (str.to_re "z")) (re.++ ((_ re.loop 5 12) (str.to_re "B")) ((_ re.loop 3 7) (str.to_re "&yL")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 5 20) (str.to_re "<B~")) (re.++ ((_ re.loop 4 17) (str.to_re "8W")) (re.++ ((_ re.loop 4 15) (str.to_re "*")) ((_ re.loop 5 11) (str.to_re "v")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)