(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 3 15) (str.to_re "q")) (re.++ ((_ re.loop 2 17) (str.to_re "4")) (re.++ ((_ re.loop 3 6) (str.to_re "x3")) ((_ re.loop 5 8) (str.to_re "Ofl")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 16) (str.to_re "*e-")) (re.++ ((_ re.loop 1 14) (str.to_re ")")) (re.++ ((_ re.loop 5 20) (str.to_re "pOz")) ((_ re.loop 2 18) (str.to_re "(")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 15) (str.to_re "y")) (re.++ ((_ re.loop 4 9) (str.to_re "K1")) (re.++ ((_ re.loop 2 9) (str.to_re "mz(")) ((_ re.loop 1 16) (str.to_re "#c")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 5 9) (str.to_re "RY")) (re.++ ((_ re.loop 2 16) (str.to_re "xg")) (re.++ ((_ re.loop 3 14) (str.to_re "G")) ((_ re.loop 4 19) (str.to_re "Q")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
