(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 7) (str.to_re "CBT")) (re.++ ((_ re.loop 4 6) (str.to_re "f")) (re.++ ((_ re.loop 5 7) (str.to_re "HeB")) ((_ re.loop 5 11) (str.to_re ">")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 4 10) (str.to_re "'P")) (re.++ ((_ re.loop 1 20) (str.to_re "t=")) (re.++ ((_ re.loop 5 11) (str.to_re "f>g")) ((_ re.loop 2 11) (str.to_re "V/")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 14) (str.to_re "\\B")) (re.++ ((_ re.loop 0 20) (str.to_re "6")) (re.++ ((_ re.loop 0 20) (str.to_re "<6}")) ((_ re.loop 1 20) (str.to_re "&d")))))) ((_ re.loop 0 2) (re.++ ((_ re.loop 1 19) (str.to_re "Tl.")) (re.++ ((_ re.loop 1 17) (str.to_re "CI.")) (re.++ ((_ re.loop 2 17) (str.to_re "o\\(")) ((_ re.loop 3 5) (str.to_re "0")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)