(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 10) (str.to_re "t")) (re.++ ((_ re.loop 2 14) (str.to_re "B")) (re.++ ((_ re.loop 2 18) (str.to_re "N<l")) ((_ re.loop 2 6) (str.to_re "`H{")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 0 9) (str.to_re "b2")) (re.++ ((_ re.loop 2 10) (str.to_re "!")) (re.++ ((_ re.loop 4 8) (str.to_re "6h")) ((_ re.loop 3 15) (str.to_re "&F$")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 20) (str.to_re "FvW")) (re.++ ((_ re.loop 5 13) (str.to_re "wmi")) (re.++ ((_ re.loop 5 20) (str.to_re "nH")) ((_ re.loop 1 17) (str.to_re "[qV")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 2 17) (str.to_re "HH")) (re.++ ((_ re.loop 2 20) (str.to_re "zX")) (re.++ ((_ re.loop 5 17) (str.to_re "A")) ((_ re.loop 2 13) (str.to_re "w")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
