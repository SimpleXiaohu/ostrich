(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 17) (str.to_re "<z")) (re.++ ((_ re.loop 4 6) (str.to_re "L")) (re.++ ((_ re.loop 3 14) (str.to_re ":@")) ((_ re.loop 3 13) (str.to_re "+")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 17) (str.to_re "xz\u0022")) (re.++ ((_ re.loop 1 10) (str.to_re ")y")) (re.++ ((_ re.loop 3 18) (str.to_re "np")) ((_ re.loop 4 6) (str.to_re "dy")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 5) (str.to_re "XD")) (re.++ ((_ re.loop 2 8) (str.to_re "J")) (re.++ ((_ re.loop 5 13) (str.to_re "Y^x")) ((_ re.loop 0 10) (str.to_re "a")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 3 17) (str.to_re "Lx7")) (re.++ ((_ re.loop 5 7) (str.to_re "vEH")) (re.++ ((_ re.loop 2 18) (str.to_re "&?")) ((_ re.loop 1 5) (str.to_re "Q/e")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)