(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 5 17) (str.to_re "9}a")) (re.++ ((_ re.loop 4 16) (str.to_re "_")) (re.++ ((_ re.loop 1 11) (str.to_re "R+")) ((_ re.loop 4 8) (str.to_re "d")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 14) (str.to_re "i")) (re.++ ((_ re.loop 3 18) (str.to_re "/@B")) (re.++ ((_ re.loop 4 15) (str.to_re "F")) ((_ re.loop 3 6) (str.to_re "BT")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 8) (str.to_re "Y`")) (re.++ ((_ re.loop 5 12) (str.to_re "$3G")) (re.++ ((_ re.loop 4 12) (str.to_re "/Bi")) ((_ re.loop 3 10) (str.to_re "0H+")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 1 16) (str.to_re "Kh6")) (re.++ ((_ re.loop 2 11) (str.to_re "VY")) (re.++ ((_ re.loop 2 12) (str.to_re "5I")) ((_ re.loop 4 12) (str.to_re "89")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)