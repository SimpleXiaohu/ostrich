(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 3 17) (str.to_re "#")) (re.++ ((_ re.loop 2 7) (str.to_re "(a")) (re.++ ((_ re.loop 0 20) (str.to_re "\\`8")) ((_ re.loop 2 12) (str.to_re "ne")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 16) (str.to_re "-")) (re.++ ((_ re.loop 3 10) (str.to_re "r")) (re.++ ((_ re.loop 2 14) (str.to_re ";5")) ((_ re.loop 3 5) (str.to_re "*")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 2 20) (str.to_re "kC")) (re.++ ((_ re.loop 0 10) (str.to_re "DQ")) (re.++ ((_ re.loop 3 12) (str.to_re ";T")) ((_ re.loop 5 8) (str.to_re ",L")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 0 5) (str.to_re "`A")) (re.++ ((_ re.loop 5 7) (str.to_re "C<")) (re.++ ((_ re.loop 1 5) (str.to_re "U")) ((_ re.loop 2 6) (str.to_re "<`k")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
