(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 10) (str.to_re "D")) (re.++ ((_ re.loop 1 20) (str.to_re "@")) (re.++ ((_ re.loop 0 18) (str.to_re "%Fp")) ((_ re.loop 5 16) (str.to_re "r")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 3 11) (str.to_re "?:")) (re.++ ((_ re.loop 1 16) (str.to_re "nCZ")) (re.++ ((_ re.loop 4 15) (str.to_re "g")) ((_ re.loop 5 8) (str.to_re "~BK")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 5) (str.to_re "tt")) (re.++ ((_ re.loop 0 19) (str.to_re "I")) (re.++ ((_ re.loop 4 19) (str.to_re "$")) ((_ re.loop 1 17) (str.to_re ":")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 4 9) (str.to_re ",")) (re.++ ((_ re.loop 5 8) (str.to_re "W")) (re.++ ((_ re.loop 2 16) (str.to_re "6")) ((_ re.loop 0 20) (str.to_re "D8")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
