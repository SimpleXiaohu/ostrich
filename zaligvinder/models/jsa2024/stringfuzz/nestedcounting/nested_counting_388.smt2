(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 10) (str.to_re "'wX")) (re.++ ((_ re.loop 4 6) (str.to_re "xx")) (re.++ ((_ re.loop 5 12) (str.to_re "&k")) ((_ re.loop 5 10) (str.to_re "R")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 15) (str.to_re "+")) (re.++ ((_ re.loop 0 20) (str.to_re "g-R")) (re.++ ((_ re.loop 2 16) (str.to_re "r")) ((_ re.loop 0 10) (str.to_re ",S<")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 0 12) (str.to_re "*cD")) (re.++ ((_ re.loop 2 14) (str.to_re "/")) (re.++ ((_ re.loop 1 5) (str.to_re "Y|h")) ((_ re.loop 1 15) (str.to_re "c%'")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 4 12) (str.to_re "n")) (re.++ ((_ re.loop 0 16) (str.to_re "=2")) (re.++ ((_ re.loop 5 13) (str.to_re "_4T")) ((_ re.loop 5 14) (str.to_re "an")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)