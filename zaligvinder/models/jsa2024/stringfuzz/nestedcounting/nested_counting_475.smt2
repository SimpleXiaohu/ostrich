(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 0 14) (str.to_re "\\V")) (re.++ ((_ re.loop 1 5) (str.to_re "UU`")) (re.++ ((_ re.loop 1 10) (str.to_re "%9")) ((_ re.loop 1 16) (str.to_re "a")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 11) (str.to_re "9<")) (re.++ ((_ re.loop 5 9) (str.to_re "vqh")) (re.++ ((_ re.loop 2 18) (str.to_re "nO<")) ((_ re.loop 5 18) (str.to_re "z)")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 18) (str.to_re "&}")) (re.++ ((_ re.loop 3 17) (str.to_re "n`")) (re.++ ((_ re.loop 1 15) (str.to_re "r")) ((_ re.loop 0 10) (str.to_re "N")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 1 12) (str.to_re "\\e")) (re.++ ((_ re.loop 1 12) (str.to_re "\u0022")) (re.++ ((_ re.loop 4 17) (str.to_re "`")) ((_ re.loop 4 8) (str.to_re "U")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)