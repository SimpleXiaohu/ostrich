(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 1 19) (str.to_re "p}|")) (re.++ ((_ re.loop 5 11) (str.to_re "Qf")) (re.++ ((_ re.loop 3 18) (str.to_re "~")) ((_ re.loop 4 13) (str.to_re "R")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 20) (str.to_re "W")) (re.++ ((_ re.loop 1 15) (str.to_re "n3[")) (re.++ ((_ re.loop 4 17) (str.to_re "^8'")) ((_ re.loop 2 8) (str.to_re "JB")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 0 8) (str.to_re "s")) (re.++ ((_ re.loop 3 16) (str.to_re "|x,")) (re.++ ((_ re.loop 5 15) (str.to_re "Bp")) ((_ re.loop 2 19) (str.to_re "1")))))) ((_ re.loop 1 1) (re.++ ((_ re.loop 2 17) (str.to_re "#")) (re.++ ((_ re.loop 5 17) (str.to_re ">]")) (re.++ ((_ re.loop 3 17) (str.to_re ":n")) ((_ re.loop 5 8) (str.to_re "QQ")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)