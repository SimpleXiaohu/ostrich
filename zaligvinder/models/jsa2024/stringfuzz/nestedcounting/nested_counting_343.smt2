(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 0 10) (str.to_re "{")) (re.++ ((_ re.loop 1 11) (str.to_re "D")) (re.++ ((_ re.loop 4 12) (str.to_re ".I")) ((_ re.loop 0 8) (str.to_re "~")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 0 14) (str.to_re "xc")) (re.++ ((_ re.loop 2 17) (str.to_re ")")) (re.++ ((_ re.loop 2 11) (str.to_re "3u{")) ((_ re.loop 4 15) (str.to_re "?E")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 17) (str.to_re "|\\?")) (re.++ ((_ re.loop 0 9) (str.to_re "~")) (re.++ ((_ re.loop 0 15) (str.to_re "b")) ((_ re.loop 5 7) (str.to_re "fq")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 0 7) (str.to_re "-5")) (re.++ ((_ re.loop 2 7) (str.to_re "gA")) (re.++ ((_ re.loop 5 5) (str.to_re "K@f")) ((_ re.loop 4 12) (str.to_re "TYN")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)