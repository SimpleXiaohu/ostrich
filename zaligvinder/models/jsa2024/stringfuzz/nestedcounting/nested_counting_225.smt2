(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 19) (str.to_re "=&")) (re.++ ((_ re.loop 3 19) (str.to_re "(6")) (re.++ ((_ re.loop 2 6) (str.to_re ",x")) ((_ re.loop 3 17) (str.to_re "]*A")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 14) (str.to_re "yA")) (re.++ ((_ re.loop 4 13) (str.to_re "50")) (re.++ ((_ re.loop 2 8) (str.to_re ")")) ((_ re.loop 0 19) (str.to_re "(")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 0 9) (str.to_re "-")) (re.++ ((_ re.loop 1 16) (str.to_re "RiD")) (re.++ ((_ re.loop 2 14) (str.to_re "+kc")) ((_ re.loop 0 17) (str.to_re "|}^")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 4 5) (str.to_re "F*P")) (re.++ ((_ re.loop 1 9) (str.to_re ")j")) (re.++ ((_ re.loop 1 7) (str.to_re "JB_")) ((_ re.loop 2 16) (str.to_re "!")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
