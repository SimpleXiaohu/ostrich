(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 0 10) (str.to_re "*Y")) (re.++ ((_ re.loop 1 8) (str.to_re "|")) (re.++ ((_ re.loop 1 12) (str.to_re "fL")) ((_ re.loop 5 16) (str.to_re "n\u0022.")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 3 5) (str.to_re ")wY")) (re.++ ((_ re.loop 2 16) (str.to_re ">")) (re.++ ((_ re.loop 2 12) (str.to_re "+")) ((_ re.loop 5 13) (str.to_re "[9@")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 3 7) (str.to_re "U")) (re.++ ((_ re.loop 1 8) (str.to_re "Cm6")) (re.++ ((_ re.loop 3 9) (str.to_re "@")) ((_ re.loop 3 12) (str.to_re "cj")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 4 8) (str.to_re "Yj")) (re.++ ((_ re.loop 0 7) (str.to_re "5")) (re.++ ((_ re.loop 4 11) (str.to_re "J1&")) ((_ re.loop 2 19) (str.to_re "f")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)