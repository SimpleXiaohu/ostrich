(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 10) (str.to_re "(1")) (re.++ ((_ re.loop 1 17) (str.to_re "TQ")) (re.++ ((_ re.loop 5 19) (str.to_re "jk3")) ((_ re.loop 1 12) (str.to_re "Q")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 3 7) (str.to_re "eJ}")) (re.++ ((_ re.loop 4 5) (str.to_re "|C;")) (re.++ ((_ re.loop 4 19) (str.to_re "x")) ((_ re.loop 2 18) (str.to_re "~l\\")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 3 5) (str.to_re "xit")) (re.++ ((_ re.loop 3 9) (str.to_re "(\u0022")) (re.++ ((_ re.loop 3 10) (str.to_re "it")) ((_ re.loop 0 14) (str.to_re "wGX")))))) ((_ re.loop 0 2) (re.++ ((_ re.loop 4 5) (str.to_re "k")) (re.++ ((_ re.loop 1 13) (str.to_re "E/")) (re.++ ((_ re.loop 4 7) (str.to_re "HI")) ((_ re.loop 0 10) (str.to_re "$ay")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)