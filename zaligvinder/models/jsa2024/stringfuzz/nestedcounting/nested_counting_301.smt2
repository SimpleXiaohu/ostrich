(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 19) (str.to_re "\u0022-Z")) (re.++ ((_ re.loop 1 20) (str.to_re "r`")) (re.++ ((_ re.loop 3 5) (str.to_re "4")) ((_ re.loop 4 13) (str.to_re "R.g")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 12) (str.to_re "]G")) (re.++ ((_ re.loop 3 18) (str.to_re "d")) (re.++ ((_ re.loop 5 19) (str.to_re "!l3")) ((_ re.loop 1 6) (str.to_re "/")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 8) (str.to_re "hi")) (re.++ ((_ re.loop 1 16) (str.to_re "JDH")) (re.++ ((_ re.loop 2 19) (str.to_re "@]")) ((_ re.loop 3 14) (str.to_re "6e")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 0 14) (str.to_re "A<")) (re.++ ((_ re.loop 2 17) (str.to_re "O")) (re.++ ((_ re.loop 4 17) (str.to_re "I")) ((_ re.loop 0 15) (str.to_re "sa2")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
