(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 12) (str.to_re "<")) (re.++ ((_ re.loop 5 13) (str.to_re "z")) (re.++ ((_ re.loop 5 7) (str.to_re "3lS")) ((_ re.loop 3 16) (str.to_re "B*\\")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 3 17) (str.to_re "ADu")) (re.++ ((_ re.loop 0 6) (str.to_re "@:")) (re.++ ((_ re.loop 3 20) (str.to_re "Q")) ((_ re.loop 5 17) (str.to_re "8")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 14) (str.to_re "^'f")) (re.++ ((_ re.loop 4 10) (str.to_re "BYh")) (re.++ ((_ re.loop 1 19) (str.to_re "{")) ((_ re.loop 2 20) (str.to_re "M")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 2 11) (str.to_re "W*")) (re.++ ((_ re.loop 0 7) (str.to_re "Cv")) (re.++ ((_ re.loop 1 9) (str.to_re "ZFr")) ((_ re.loop 3 14) (str.to_re "F3")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
