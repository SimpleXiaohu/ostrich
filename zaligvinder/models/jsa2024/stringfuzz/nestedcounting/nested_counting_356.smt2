(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 4 7) (str.to_re "L38")) (re.++ ((_ re.loop 4 13) (str.to_re "?e3")) (re.++ ((_ re.loop 5 17) (str.to_re "Ui5")) ((_ re.loop 1 16) (str.to_re "jR-")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 3 13) (str.to_re "9VU")) (re.++ ((_ re.loop 1 14) (str.to_re "j")) (re.++ ((_ re.loop 2 8) (str.to_re "<2")) ((_ re.loop 4 11) (str.to_re "M:")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 2 10) (str.to_re "#;5")) (re.++ ((_ re.loop 0 17) (str.to_re ")")) (re.++ ((_ re.loop 2 7) (str.to_re "$h|")) ((_ re.loop 4 19) (str.to_re "}Y]")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 0 7) (str.to_re "!@")) (re.++ ((_ re.loop 5 7) (str.to_re "e")) (re.++ ((_ re.loop 2 6) (str.to_re "]F")) ((_ re.loop 1 19) (str.to_re "*")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
