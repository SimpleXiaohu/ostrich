(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 8) (str.to_re "^S")) (re.++ ((_ re.loop 1 10) (str.to_re "x")) (re.++ ((_ re.loop 5 9) (str.to_re "L2")) ((_ re.loop 5 12) (str.to_re "_S")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 16) (str.to_re "-3{")) (re.++ ((_ re.loop 4 7) (str.to_re "T,")) (re.++ ((_ re.loop 5 9) (str.to_re "\u0022")) ((_ re.loop 5 13) (str.to_re "+N")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 6) (str.to_re "tp")) (re.++ ((_ re.loop 4 10) (str.to_re "=Ww")) (re.++ ((_ re.loop 4 5) (str.to_re "Ce")) ((_ re.loop 4 10) (str.to_re "Dad")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 1 13) (str.to_re "uAW")) (re.++ ((_ re.loop 4 20) (str.to_re "$R]")) (re.++ ((_ re.loop 1 16) (str.to_re "Kvi")) ((_ re.loop 2 9) (str.to_re "&ag")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
