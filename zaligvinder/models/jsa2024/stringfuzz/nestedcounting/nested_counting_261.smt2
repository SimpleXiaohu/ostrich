(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 14) (str.to_re "mT")) (re.++ ((_ re.loop 4 19) (str.to_re "+")) (re.++ ((_ re.loop 0 11) (str.to_re "V")) ((_ re.loop 3 7) (str.to_re "4")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 0 20) (str.to_re "!L")) (re.++ ((_ re.loop 5 12) (str.to_re "93X")) (re.++ ((_ re.loop 2 14) (str.to_re "*")) ((_ re.loop 1 6) (str.to_re "pK")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 4 16) (str.to_re "Kd")) (re.++ ((_ re.loop 2 12) (str.to_re "p}")) (re.++ ((_ re.loop 0 5) (str.to_re "N")) ((_ re.loop 4 17) (str.to_re "Zrn")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 2 9) (str.to_re "0A")) (re.++ ((_ re.loop 3 6) (str.to_re "#{")) (re.++ ((_ re.loop 4 9) (str.to_re "u~")) ((_ re.loop 0 13) (str.to_re "iC:")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)