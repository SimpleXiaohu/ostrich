(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 5) (str.to_re "?")) (re.++ ((_ re.loop 0 12) (str.to_re "m<")) (re.++ ((_ re.loop 5 5) (str.to_re "w")) ((_ re.loop 5 11) (str.to_re "e")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 4 16) (str.to_re "v_R")) (re.++ ((_ re.loop 5 10) (str.to_re "X")) (re.++ ((_ re.loop 4 19) (str.to_re "_t]")) ((_ re.loop 4 5) (str.to_re "ax")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 0 15) (str.to_re "%4")) (re.++ ((_ re.loop 0 14) (str.to_re ",9f")) (re.++ ((_ re.loop 1 8) (str.to_re "y")) ((_ re.loop 0 19) (str.to_re "}[%")))))) ((_ re.loop 0 2) (re.++ ((_ re.loop 5 19) (str.to_re "iv")) (re.++ ((_ re.loop 5 5) (str.to_re "*")) (re.++ ((_ re.loop 3 9) (str.to_re "_")) ((_ re.loop 4 19) (str.to_re "o)>")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)