(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 18) (str.to_re "2!K")) (re.++ ((_ re.loop 0 5) (str.to_re "_yW")) (re.++ ((_ re.loop 5 10) (str.to_re "##")) ((_ re.loop 1 14) (str.to_re "yR")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 5 16) (str.to_re "}")) (re.++ ((_ re.loop 3 17) (str.to_re "t")) (re.++ ((_ re.loop 0 8) (str.to_re "0")) ((_ re.loop 5 18) (str.to_re "r")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 9) (str.to_re "2CD")) (re.++ ((_ re.loop 0 6) (str.to_re "O")) (re.++ ((_ re.loop 0 14) (str.to_re "^7")) ((_ re.loop 1 5) (str.to_re "OD")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 1 13) (str.to_re "W5")) (re.++ ((_ re.loop 1 8) (str.to_re "u")) (re.++ ((_ re.loop 1 11) (str.to_re ",e")) ((_ re.loop 0 14) (str.to_re "(iL")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)