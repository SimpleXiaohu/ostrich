(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 5 12) (str.to_re "}L")) (re.++ ((_ re.loop 4 18) (str.to_re "^9")) (re.++ ((_ re.loop 0 16) (str.to_re "n")) ((_ re.loop 2 9) (str.to_re "BT#")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 3 15) (str.to_re "v")) (re.++ ((_ re.loop 5 9) (str.to_re "&")) (re.++ ((_ re.loop 0 5) (str.to_re "df")) ((_ re.loop 3 20) (str.to_re "!NL")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 5 7) (str.to_re "{r3")) (re.++ ((_ re.loop 3 10) (str.to_re "O")) (re.++ ((_ re.loop 4 18) (str.to_re "{a\u0022")) ((_ re.loop 4 11) (str.to_re "T_~")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 1 19) (str.to_re "mk\u0022")) (re.++ ((_ re.loop 5 10) (str.to_re "0)")) (re.++ ((_ re.loop 0 18) (str.to_re "f_Q")) ((_ re.loop 5 5) (str.to_re "}")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
