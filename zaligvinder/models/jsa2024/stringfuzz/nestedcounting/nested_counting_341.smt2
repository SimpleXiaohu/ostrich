(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 20) (str.to_re "(}|")) (re.++ ((_ re.loop 2 12) (str.to_re "N~h")) (re.++ ((_ re.loop 0 17) (str.to_re "d")) ((_ re.loop 1 12) (str.to_re "mQn")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 13) (str.to_re "R;{")) (re.++ ((_ re.loop 0 7) (str.to_re "B")) (re.++ ((_ re.loop 4 20) (str.to_re "yD")) ((_ re.loop 0 6) (str.to_re "^")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 7) (str.to_re "T")) (re.++ ((_ re.loop 1 6) (str.to_re "h")) (re.++ ((_ re.loop 3 10) (str.to_re "S")) ((_ re.loop 2 20) (str.to_re "MZ")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 1 11) (str.to_re ";")) (re.++ ((_ re.loop 0 5) (str.to_re "9r")) (re.++ ((_ re.loop 2 10) (str.to_re "_w")) ((_ re.loop 2 12) (str.to_re "`4")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
