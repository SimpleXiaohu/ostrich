(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 13) (str.to_re "jEw")) (re.++ ((_ re.loop 3 14) (str.to_re "QD")) (re.++ ((_ re.loop 2 16) (str.to_re "O")) ((_ re.loop 5 19) (str.to_re "R")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 10) (str.to_re "6\\")) (re.++ ((_ re.loop 1 12) (str.to_re ")X")) (re.++ ((_ re.loop 4 8) (str.to_re "RxL")) ((_ re.loop 4 18) (str.to_re "~z")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 13) (str.to_re "b.")) (re.++ ((_ re.loop 4 12) (str.to_re "`(S")) (re.++ ((_ re.loop 4 5) (str.to_re "8")) ((_ re.loop 5 20) (str.to_re "r")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 5 13) (str.to_re "Q$<")) (re.++ ((_ re.loop 3 17) (str.to_re "3#")) (re.++ ((_ re.loop 2 15) (str.to_re "DL\u0022")) ((_ re.loop 1 20) (str.to_re "iq")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)