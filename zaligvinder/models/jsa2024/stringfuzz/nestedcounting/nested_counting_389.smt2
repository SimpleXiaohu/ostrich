(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 2 19) (str.to_re "g")) (re.++ ((_ re.loop 2 17) (str.to_re "Ls]")) (re.++ ((_ re.loop 1 12) (str.to_re "T(A")) ((_ re.loop 5 15) (str.to_re "T")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 11) (str.to_re "g")) (re.++ ((_ re.loop 5 7) (str.to_re "\\+")) (re.++ ((_ re.loop 5 10) (str.to_re "&t")) ((_ re.loop 1 16) (str.to_re ")")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 9) (str.to_re "o")) (re.++ ((_ re.loop 0 14) (str.to_re "q")) (re.++ ((_ re.loop 4 12) (str.to_re "v")) ((_ re.loop 5 11) (str.to_re "n;A")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 4 17) (str.to_re "G")) (re.++ ((_ re.loop 4 18) (str.to_re "Y")) (re.++ ((_ re.loop 1 7) (str.to_re "?0*")) ((_ re.loop 4 20) (str.to_re "O00")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
