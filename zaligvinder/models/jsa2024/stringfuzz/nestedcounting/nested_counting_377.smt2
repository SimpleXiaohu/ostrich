(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 2 10) (str.to_re "YJ")) (re.++ ((_ re.loop 3 16) (str.to_re "rb8")) (re.++ ((_ re.loop 2 13) (str.to_re "Y>,")) ((_ re.loop 5 11) (str.to_re ".")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 4 17) (str.to_re "\u0022")) (re.++ ((_ re.loop 5 6) (str.to_re ">W!")) (re.++ ((_ re.loop 5 19) (str.to_re "+y")) ((_ re.loop 2 8) (str.to_re "r\u0022")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 1 14) (str.to_re "|Y")) (re.++ ((_ re.loop 1 19) (str.to_re "9N*")) (re.++ ((_ re.loop 1 15) (str.to_re "3")) ((_ re.loop 2 7) (str.to_re ",[")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 5 17) (str.to_re "V")) (re.++ ((_ re.loop 3 16) (str.to_re "`?^")) (re.++ ((_ re.loop 0 7) (str.to_re "O")) ((_ re.loop 0 16) (str.to_re "hi")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
