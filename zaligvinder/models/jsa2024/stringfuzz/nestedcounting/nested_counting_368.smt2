(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 0 15) (str.to_re "(8u")) (re.++ ((_ re.loop 3 5) (str.to_re "Mc5")) (re.++ ((_ re.loop 3 20) (str.to_re "^")) ((_ re.loop 5 16) (str.to_re "ur;")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 13) (str.to_re "H")) (re.++ ((_ re.loop 1 17) (str.to_re "nd")) (re.++ ((_ re.loop 0 13) (str.to_re "-T")) ((_ re.loop 1 5) (str.to_re "j%")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 17) (str.to_re "('")) (re.++ ((_ re.loop 1 15) (str.to_re "5")) (re.++ ((_ re.loop 5 15) (str.to_re "\\D6")) ((_ re.loop 2 20) (str.to_re "4")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 2 9) (str.to_re "D")) (re.++ ((_ re.loop 2 7) (str.to_re "%")) (re.++ ((_ re.loop 3 7) (str.to_re "@")) ((_ re.loop 0 11) (str.to_re "*4l")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)