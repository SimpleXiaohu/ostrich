(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 2 20) (str.to_re "@6")) (re.++ ((_ re.loop 3 11) (str.to_re "|f`")) (re.++ ((_ re.loop 2 8) (str.to_re "{0")) ((_ re.loop 2 19) (str.to_re "w@?")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 16) (str.to_re "nc!")) (re.++ ((_ re.loop 1 17) (str.to_re "+rs")) (re.++ ((_ re.loop 0 7) (str.to_re "yc")) ((_ re.loop 4 19) (str.to_re "m&")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 16) (str.to_re "v],")) (re.++ ((_ re.loop 1 11) (str.to_re "|)")) (re.++ ((_ re.loop 3 8) (str.to_re "v+:")) ((_ re.loop 3 12) (str.to_re "u;")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 0 12) (str.to_re ":8o")) (re.++ ((_ re.loop 3 13) (str.to_re "+0")) (re.++ ((_ re.loop 4 16) (str.to_re "C")) ((_ re.loop 5 20) (str.to_re "w")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
