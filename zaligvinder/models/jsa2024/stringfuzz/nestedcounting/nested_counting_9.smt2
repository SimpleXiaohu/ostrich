(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 0 11) (str.to_re "x")) (re.++ ((_ re.loop 3 7) (str.to_re "a")) (re.++ ((_ re.loop 3 6) (str.to_re "Oq&")) ((_ re.loop 4 15) (str.to_re "\\<")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 3 5) (str.to_re "*3")) (re.++ ((_ re.loop 2 15) (str.to_re "I")) (re.++ ((_ re.loop 2 15) (str.to_re "(9")) ((_ re.loop 3 14) (str.to_re "5P")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 3 20) (str.to_re "F6")) (re.++ ((_ re.loop 0 10) (str.to_re "w,")) (re.++ ((_ re.loop 5 16) (str.to_re "Fq")) ((_ re.loop 5 10) (str.to_re "!i")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 5 13) (str.to_re "C")) (re.++ ((_ re.loop 2 9) (str.to_re "!")) (re.++ ((_ re.loop 4 6) (str.to_re "c(")) ((_ re.loop 3 15) (str.to_re "3l@")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
