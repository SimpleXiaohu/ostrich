(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 10) (str.to_re "2!>")) (re.++ ((_ re.loop 3 16) (str.to_re "`")) (re.++ ((_ re.loop 3 19) (str.to_re "2W")) ((_ re.loop 5 13) (str.to_re "D-")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 0 7) (str.to_re "n[")) (re.++ ((_ re.loop 1 5) (str.to_re "Q6")) (re.++ ((_ re.loop 1 7) (str.to_re "Wa")) ((_ re.loop 4 9) (str.to_re "j3")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 5 9) (str.to_re ",")) (re.++ ((_ re.loop 2 14) (str.to_re "z")) (re.++ ((_ re.loop 3 9) (str.to_re "`w")) ((_ re.loop 2 19) (str.to_re "q&\u0022")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 3 6) (str.to_re "1")) (re.++ ((_ re.loop 3 6) (str.to_re "3")) (re.++ ((_ re.loop 5 9) (str.to_re "6Ou")) ((_ re.loop 4 13) (str.to_re "z")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)