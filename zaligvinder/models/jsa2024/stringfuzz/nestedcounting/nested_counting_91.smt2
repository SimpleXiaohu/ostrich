(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 9) (str.to_re "\u0022V")) (re.++ ((_ re.loop 3 10) (str.to_re "*")) (re.++ ((_ re.loop 3 14) (str.to_re "m")) ((_ re.loop 5 14) (str.to_re "(")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 12) (str.to_re "'f")) (re.++ ((_ re.loop 0 6) (str.to_re "(Eq")) (re.++ ((_ re.loop 4 6) (str.to_re "Z>")) ((_ re.loop 2 17) (str.to_re "{T")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 11) (str.to_re "'.")) (re.++ ((_ re.loop 2 13) (str.to_re "u3N")) (re.++ ((_ re.loop 0 11) (str.to_re "Q9")) ((_ re.loop 2 11) (str.to_re "\u0022,j")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 1 6) (str.to_re "m>")) (re.++ ((_ re.loop 3 18) (str.to_re "P9")) (re.++ ((_ re.loop 4 17) (str.to_re "2SN")) ((_ re.loop 4 11) (str.to_re "bX")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
