(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 2 9) (str.to_re "6")) (re.++ ((_ re.loop 2 9) (str.to_re "[P")) (re.++ ((_ re.loop 5 12) (str.to_re "\\J")) ((_ re.loop 4 12) (str.to_re ":")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 0 8) (str.to_re "+s@")) (re.++ ((_ re.loop 0 10) (str.to_re "V*A")) (re.++ ((_ re.loop 2 10) (str.to_re "o")) ((_ re.loop 4 10) (str.to_re "{$")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 7) (str.to_re "=")) (re.++ ((_ re.loop 2 17) (str.to_re "j;")) (re.++ ((_ re.loop 3 10) (str.to_re "7I]")) ((_ re.loop 2 6) (str.to_re "6~")))))) ((_ re.loop 0 1) (re.++ ((_ re.loop 5 9) (str.to_re "U")) (re.++ ((_ re.loop 2 17) (str.to_re "]B")) (re.++ ((_ re.loop 2 7) (str.to_re "(,=")) ((_ re.loop 4 19) (str.to_re "7V")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)