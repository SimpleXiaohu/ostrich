(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 9) (str.to_re "OB%")) (re.++ ((_ re.loop 3 6) (str.to_re "K")) (re.++ ((_ re.loop 0 11) (str.to_re "2f")) ((_ re.loop 0 17) (str.to_re "Rr")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 15) (str.to_re ".<M")) (re.++ ((_ re.loop 1 16) (str.to_re "D")) (re.++ ((_ re.loop 1 11) (str.to_re "B`>")) ((_ re.loop 1 20) (str.to_re "?b>")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 14) (str.to_re "t*")) (re.++ ((_ re.loop 5 12) (str.to_re "*!")) (re.++ ((_ re.loop 2 15) (str.to_re "m2")) ((_ re.loop 4 13) (str.to_re "LA")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 2 14) (str.to_re "v")) (re.++ ((_ re.loop 4 15) (str.to_re "A4P")) (re.++ ((_ re.loop 4 18) (str.to_re "3{")) ((_ re.loop 5 17) (str.to_re "&@y")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
