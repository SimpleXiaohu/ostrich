(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 3 5) (str.to_re "0C")) (re.++ ((_ re.loop 2 19) (str.to_re "j")) (re.++ ((_ re.loop 0 8) (str.to_re "8.H")) ((_ re.loop 1 20) (str.to_re "d")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 14) (str.to_re "'")) (re.++ ((_ re.loop 3 11) (str.to_re "}\u0022'")) (re.++ ((_ re.loop 0 9) (str.to_re "U/b")) ((_ re.loop 3 12) (str.to_re "$pS")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 7) (str.to_re "(_")) (re.++ ((_ re.loop 5 8) (str.to_re "e{")) (re.++ ((_ re.loop 4 15) (str.to_re "V")) ((_ re.loop 1 16) (str.to_re "gs")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 3 13) (str.to_re "Nx?")) (re.++ ((_ re.loop 4 17) (str.to_re "X")) (re.++ ((_ re.loop 4 5) (str.to_re "vp")) ((_ re.loop 1 20) (str.to_re "1v")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)