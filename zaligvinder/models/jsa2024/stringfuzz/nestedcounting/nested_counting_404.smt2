(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 15) (str.to_re "W4")) (re.++ ((_ re.loop 0 20) (str.to_re "ol8")) (re.++ ((_ re.loop 5 9) (str.to_re "Yp")) ((_ re.loop 2 6) (str.to_re "<")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 0 10) (str.to_re "*")) (re.++ ((_ re.loop 1 10) (str.to_re "+M")) (re.++ ((_ re.loop 4 5) (str.to_re "])}")) ((_ re.loop 2 20) (str.to_re "O#")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 3 20) (str.to_re "J")) (re.++ ((_ re.loop 0 12) (str.to_re "g/")) (re.++ ((_ re.loop 5 19) (str.to_re "r")) ((_ re.loop 4 16) (str.to_re "}6V")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 5 17) (str.to_re "3")) (re.++ ((_ re.loop 4 10) (str.to_re "#y")) (re.++ ((_ re.loop 5 15) (str.to_re "t")) ((_ re.loop 5 18) (str.to_re "}*p")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
