(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 18) (str.to_re "_'")) (re.++ ((_ re.loop 4 18) (str.to_re "y]")) (re.++ ((_ re.loop 1 6) (str.to_re "%w$")) ((_ re.loop 1 20) (str.to_re "7T")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 13) (str.to_re "0")) (re.++ ((_ re.loop 4 12) (str.to_re "&")) (re.++ ((_ re.loop 1 16) (str.to_re "/Iz")) ((_ re.loop 0 19) (str.to_re "d")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 2 18) (str.to_re "D")) (re.++ ((_ re.loop 4 7) (str.to_re "!/")) (re.++ ((_ re.loop 4 9) (str.to_re "Oa")) ((_ re.loop 5 12) (str.to_re "U")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 1 18) (str.to_re "5a)")) (re.++ ((_ re.loop 4 19) (str.to_re "mz")) (re.++ ((_ re.loop 2 7) (str.to_re "}[")) ((_ re.loop 5 8) (str.to_re "or")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
