(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 5 17) (str.to_re "N")) (re.++ ((_ re.loop 4 10) (str.to_re "i")) (re.++ ((_ re.loop 0 5) (str.to_re "6")) ((_ re.loop 4 16) (str.to_re "\u0022fg")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 18) (str.to_re "QgK")) (re.++ ((_ re.loop 1 13) (str.to_re "y")) (re.++ ((_ re.loop 2 14) (str.to_re "3lV")) ((_ re.loop 4 7) (str.to_re ":'")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 14) (str.to_re "oKH")) (re.++ ((_ re.loop 3 19) (str.to_re "THt")) (re.++ ((_ re.loop 5 5) (str.to_re "Q")) ((_ re.loop 4 13) (str.to_re "fff")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 0 13) (str.to_re "$dM")) (re.++ ((_ re.loop 1 13) (str.to_re "L")) (re.++ ((_ re.loop 3 10) (str.to_re "A0")) ((_ re.loop 1 9) (str.to_re "&")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
