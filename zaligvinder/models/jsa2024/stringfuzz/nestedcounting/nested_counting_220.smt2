(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 2 20) (str.to_re "/b.")) (re.++ ((_ re.loop 0 9) (str.to_re "_V}")) (re.++ ((_ re.loop 0 6) (str.to_re "js")) ((_ re.loop 2 5) (str.to_re "wL")))))) (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 1 6) (str.to_re "k%")) (re.++ ((_ re.loop 0 20) (str.to_re "r\\F")) (re.++ ((_ re.loop 2 17) (str.to_re "IE5")) ((_ re.loop 5 8) (str.to_re "~Ke")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 3 16) (str.to_re "*")) (re.++ ((_ re.loop 5 12) (str.to_re "8c")) (re.++ ((_ re.loop 2 18) (str.to_re "d?")) ((_ re.loop 2 9) (str.to_re "%&")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 4 15) (str.to_re "x")) (re.++ ((_ re.loop 3 20) (str.to_re "*(s")) (re.++ ((_ re.loop 5 9) (str.to_re "uOQ")) ((_ re.loop 5 6) (str.to_re "_?~")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)