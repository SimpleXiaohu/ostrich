(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 2 18) (str.to_re "4")) (re.++ ((_ re.loop 0 16) (str.to_re "3")) (re.++ ((_ re.loop 2 12) (str.to_re "G~")) ((_ re.loop 3 7) (str.to_re "J,")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 14) (str.to_re "F")) (re.++ ((_ re.loop 5 7) (str.to_re "v(k")) (re.++ ((_ re.loop 2 12) (str.to_re "y]o")) ((_ re.loop 4 8) (str.to_re ":i")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 0 6) (str.to_re "JZX")) (re.++ ((_ re.loop 3 18) (str.to_re "IsA")) (re.++ ((_ re.loop 0 7) (str.to_re "!q")) ((_ re.loop 0 18) (str.to_re "ax")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 3 17) (str.to_re "xmh")) (re.++ ((_ re.loop 5 5) (str.to_re "@l7")) (re.++ ((_ re.loop 2 17) (str.to_re "`n")) ((_ re.loop 0 11) (str.to_re "w")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)