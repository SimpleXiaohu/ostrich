(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 5 19) (str.to_re "N")) (re.++ ((_ re.loop 4 11) (str.to_re "QZu")) (re.++ ((_ re.loop 2 15) (str.to_re "[T")) ((_ re.loop 0 6) (str.to_re "s!>")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 13) (str.to_re "F")) (re.++ ((_ re.loop 3 5) (str.to_re ",o")) (re.++ ((_ re.loop 3 19) (str.to_re "QXl")) ((_ re.loop 5 12) (str.to_re "P9")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 7) (str.to_re "^")) (re.++ ((_ re.loop 0 20) (str.to_re "SW")) (re.++ ((_ re.loop 0 19) (str.to_re "t")) ((_ re.loop 5 18) (str.to_re "L\u0022!")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 3 19) (str.to_re "/fV")) (re.++ ((_ re.loop 1 20) (str.to_re "`A")) (re.++ ((_ re.loop 2 6) (str.to_re "k")) ((_ re.loop 3 7) (str.to_re ")f")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)