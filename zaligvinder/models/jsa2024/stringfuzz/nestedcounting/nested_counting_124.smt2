(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 5) (str.to_re ":")) (re.++ ((_ re.loop 0 6) (str.to_re "/p")) (re.++ ((_ re.loop 1 18) (str.to_re "^9")) ((_ re.loop 3 15) (str.to_re ")F")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 2 8) (str.to_re "m")) (re.++ ((_ re.loop 0 18) (str.to_re "_07")) (re.++ ((_ re.loop 1 12) (str.to_re "&Q")) ((_ re.loop 3 9) (str.to_re "E")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 4 13) (str.to_re "Ip9")) (re.++ ((_ re.loop 4 5) (str.to_re "j")) (re.++ ((_ re.loop 2 8) (str.to_re "5i")) ((_ re.loop 0 6) (str.to_re "-Z")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 0 13) (str.to_re "f*")) (re.++ ((_ re.loop 5 7) (str.to_re "+")) (re.++ ((_ re.loop 0 6) (str.to_re "}g")) ((_ re.loop 1 20) (str.to_re "CO")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
