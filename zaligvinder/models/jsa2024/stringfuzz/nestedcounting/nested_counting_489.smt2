(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 4 12) (str.to_re "Ng5")) (re.++ ((_ re.loop 1 11) (str.to_re "AC{")) (re.++ ((_ re.loop 1 6) (str.to_re "p}A")) ((_ re.loop 2 18) (str.to_re "C+")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 5) (str.to_re "&yR")) (re.++ ((_ re.loop 0 8) (str.to_re "o)z")) (re.++ ((_ re.loop 5 9) (str.to_re "Z")) ((_ re.loop 2 17) (str.to_re "%m")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 0 17) (str.to_re "@@")) (re.++ ((_ re.loop 2 15) (str.to_re "!.")) (re.++ ((_ re.loop 5 19) (str.to_re "Y")) ((_ re.loop 5 20) (str.to_re "e`")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 5 6) (str.to_re "@;!")) (re.++ ((_ re.loop 3 5) (str.to_re "ABd")) (re.++ ((_ re.loop 0 10) (str.to_re "5X")) ((_ re.loop 4 20) (str.to_re "F")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)