(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 5) (str.to_re "Yzd")) (re.++ ((_ re.loop 5 7) (str.to_re "U")) (re.++ ((_ re.loop 1 9) (str.to_re ":")) ((_ re.loop 5 14) (str.to_re ")e8")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 0 17) (str.to_re "I0E")) (re.++ ((_ re.loop 5 16) (str.to_re "k5")) (re.++ ((_ re.loop 1 17) (str.to_re "$")) ((_ re.loop 5 6) (str.to_re "2A)")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 15) (str.to_re "1y")) (re.++ ((_ re.loop 1 13) (str.to_re "sl]")) (re.++ ((_ re.loop 1 15) (str.to_re "Y")) ((_ re.loop 1 5) (str.to_re "H}")))))) ((_ re.loop 0 1) (re.++ ((_ re.loop 5 14) (str.to_re "YLt")) (re.++ ((_ re.loop 2 9) (str.to_re "|;")) (re.++ ((_ re.loop 1 7) (str.to_re "9")) ((_ re.loop 4 20) (str.to_re "m")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)