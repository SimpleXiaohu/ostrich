(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 3 18) (str.to_re "QZ")) (re.++ ((_ re.loop 1 20) (str.to_re "{B(")) (re.++ ((_ re.loop 5 9) (str.to_re "4qT")) ((_ re.loop 4 14) (str.to_re "I%")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 15) (str.to_re "b")) (re.++ ((_ re.loop 4 9) (str.to_re "q")) (re.++ ((_ re.loop 2 7) (str.to_re "Fl")) ((_ re.loop 4 19) (str.to_re "W_F")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 5 11) (str.to_re "Sz.")) (re.++ ((_ re.loop 0 6) (str.to_re "QJG")) (re.++ ((_ re.loop 4 6) (str.to_re "r\\")) ((_ re.loop 4 8) (str.to_re "Y")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 0 17) (str.to_re "yQ")) (re.++ ((_ re.loop 3 5) (str.to_re "\u0022\u0022>")) (re.++ ((_ re.loop 1 17) (str.to_re ":S2")) ((_ re.loop 5 11) (str.to_re "FcO")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
