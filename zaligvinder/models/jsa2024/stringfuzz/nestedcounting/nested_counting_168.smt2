(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 13) (str.to_re "1w")) (re.++ ((_ re.loop 4 19) (str.to_re "Yb")) (re.++ ((_ re.loop 4 18) (str.to_re "@")) ((_ re.loop 5 13) (str.to_re "\u0022U")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 13) (str.to_re "lwY")) (re.++ ((_ re.loop 0 12) (str.to_re "@nc")) (re.++ ((_ re.loop 3 7) (str.to_re "44")) ((_ re.loop 4 11) (str.to_re "0h?")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 7) (str.to_re "f{G")) (re.++ ((_ re.loop 0 11) (str.to_re "'Un")) (re.++ ((_ re.loop 3 15) (str.to_re "T")) ((_ re.loop 3 9) (str.to_re "1l")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 1 16) (str.to_re "P")) (re.++ ((_ re.loop 0 8) (str.to_re "\\Q[")) (re.++ ((_ re.loop 5 12) (str.to_re "]")) ((_ re.loop 4 14) (str.to_re "'")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)