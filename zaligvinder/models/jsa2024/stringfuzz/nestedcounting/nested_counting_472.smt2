(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 18) (str.to_re ";t")) (re.++ ((_ re.loop 4 14) (str.to_re ")t:")) (re.++ ((_ re.loop 5 19) (str.to_re "_/r")) ((_ re.loop 1 19) (str.to_re "g_D")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 16) (str.to_re "Xj")) (re.++ ((_ re.loop 2 6) (str.to_re "PX")) (re.++ ((_ re.loop 5 18) (str.to_re "((")) ((_ re.loop 1 15) (str.to_re "<o")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 4 17) (str.to_re "O")) (re.++ ((_ re.loop 0 7) (str.to_re ";")) (re.++ ((_ re.loop 1 17) (str.to_re "YS@")) ((_ re.loop 5 18) (str.to_re "tQ{")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 0 5) (str.to_re "a")) (re.++ ((_ re.loop 1 9) (str.to_re "5")) (re.++ ((_ re.loop 1 9) (str.to_re "u2|")) ((_ re.loop 0 11) (str.to_re "q{")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)