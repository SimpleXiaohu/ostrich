(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 3 12) (str.to_re "F")) (re.++ ((_ re.loop 1 18) (str.to_re "Tn")) (re.++ ((_ re.loop 1 13) (str.to_re "7]q")) ((_ re.loop 5 13) (str.to_re "2")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 10) (str.to_re "CX")) (re.++ ((_ re.loop 1 13) (str.to_re "-N1")) (re.++ ((_ re.loop 2 6) (str.to_re "!")) ((_ re.loop 4 18) (str.to_re "J[")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 0 14) (str.to_re "MB")) (re.++ ((_ re.loop 5 11) (str.to_re "s9")) (re.++ ((_ re.loop 5 6) (str.to_re "tx")) ((_ re.loop 4 18) (str.to_re "I")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 0 20) (str.to_re "mt")) (re.++ ((_ re.loop 4 10) (str.to_re "~fZ")) (re.++ ((_ re.loop 1 11) (str.to_re "!J")) ((_ re.loop 4 7) (str.to_re "&Vf")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)