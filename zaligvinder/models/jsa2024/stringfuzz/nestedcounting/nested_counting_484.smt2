(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 4 16) (str.to_re "i")) (re.++ ((_ re.loop 5 13) (str.to_re "?3")) (re.++ ((_ re.loop 3 17) (str.to_re "X")) ((_ re.loop 5 6) (str.to_re ">)")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 10) (str.to_re "wg")) (re.++ ((_ re.loop 4 15) (str.to_re "v=")) (re.++ ((_ re.loop 1 14) (str.to_re "}|")) ((_ re.loop 3 19) (str.to_re "lF)")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 12) (str.to_re "PW")) (re.++ ((_ re.loop 5 7) (str.to_re "TvA")) (re.++ ((_ re.loop 2 16) (str.to_re "$")) ((_ re.loop 4 6) (str.to_re "IP")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 1 8) (str.to_re "U*5")) (re.++ ((_ re.loop 4 6) (str.to_re "+")) (re.++ ((_ re.loop 5 20) (str.to_re "6L")) ((_ re.loop 3 9) (str.to_re ",p")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)