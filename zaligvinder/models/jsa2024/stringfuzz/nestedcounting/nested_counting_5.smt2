(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 20) (str.to_re "mVt")) (re.++ ((_ re.loop 5 19) (str.to_re "4I")) (re.++ ((_ re.loop 4 12) (str.to_re "D7q")) ((_ re.loop 5 12) (str.to_re "q")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 3 18) (str.to_re "]")) (re.++ ((_ re.loop 1 5) (str.to_re "v&m")) (re.++ ((_ re.loop 2 5) (str.to_re "3-")) ((_ re.loop 3 13) (str.to_re "]X")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 5 14) (str.to_re "!u")) (re.++ ((_ re.loop 1 14) (str.to_re "\\")) (re.++ ((_ re.loop 0 19) (str.to_re "?Jo")) ((_ re.loop 2 8) (str.to_re "R")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 3 9) (str.to_re "xv")) (re.++ ((_ re.loop 0 17) (str.to_re "m")) (re.++ ((_ re.loop 0 16) (str.to_re "'?")) ((_ re.loop 4 9) (str.to_re "R")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
