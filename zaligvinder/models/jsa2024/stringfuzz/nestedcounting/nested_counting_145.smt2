(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 19) (str.to_re "~")) (re.++ ((_ re.loop 3 18) (str.to_re "26")) (re.++ ((_ re.loop 2 8) (str.to_re "7x")) ((_ re.loop 3 15) (str.to_re "Lq")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 13) (str.to_re "pk3")) (re.++ ((_ re.loop 4 13) (str.to_re "1U")) (re.++ ((_ re.loop 1 14) (str.to_re "-Sl")) ((_ re.loop 2 18) (str.to_re "<zn")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 5 5) (str.to_re "O")) (re.++ ((_ re.loop 5 7) (str.to_re "ug")) (re.++ ((_ re.loop 5 13) (str.to_re "]")) ((_ re.loop 5 17) (str.to_re "%9")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 4 8) (str.to_re "Jj")) (re.++ ((_ re.loop 3 18) (str.to_re "XbA")) (re.++ ((_ re.loop 5 5) (str.to_re "t6")) ((_ re.loop 0 7) (str.to_re "r")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
