(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 20) (str.to_re "lA")) (re.++ ((_ re.loop 2 17) (str.to_re ":'%")) (re.++ ((_ re.loop 5 19) (str.to_re "cu)")) ((_ re.loop 4 8) (str.to_re "A>y")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 19) (str.to_re "]")) (re.++ ((_ re.loop 4 19) (str.to_re "[8")) (re.++ ((_ re.loop 1 7) (str.to_re "do")) ((_ re.loop 1 9) (str.to_re "uJ*")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 2 7) (str.to_re "^")) (re.++ ((_ re.loop 3 14) (str.to_re "X")) (re.++ ((_ re.loop 2 5) (str.to_re "cAA")) ((_ re.loop 4 16) (str.to_re "pCD")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 0 14) (str.to_re "{_X")) (re.++ ((_ re.loop 1 20) (str.to_re "@")) (re.++ ((_ re.loop 3 16) (str.to_re "s2u")) ((_ re.loop 4 14) (str.to_re "!")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)