(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 2 10) (str.to_re "zr7")) (re.++ ((_ re.loop 3 20) (str.to_re "1y}")) (re.++ ((_ re.loop 1 19) (str.to_re ";-")) ((_ re.loop 2 12) (str.to_re "0")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 4 13) (str.to_re "iO1")) (re.++ ((_ re.loop 4 9) (str.to_re "f?^")) (re.++ ((_ re.loop 4 11) (str.to_re "G")) ((_ re.loop 1 8) (str.to_re "]")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 5 11) (str.to_re "%")) (re.++ ((_ re.loop 4 9) (str.to_re "0")) (re.++ ((_ re.loop 3 8) (str.to_re "-77")) ((_ re.loop 2 12) (str.to_re "q2")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 3 16) (str.to_re "29'")) (re.++ ((_ re.loop 0 17) (str.to_re "4/,")) (re.++ ((_ re.loop 2 20) (str.to_re "X")) ((_ re.loop 3 7) (str.to_re "1")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)