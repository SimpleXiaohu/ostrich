(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 4 9) (str.to_re "k4")) (re.++ ((_ re.loop 5 16) (str.to_re "p>")) (re.++ ((_ re.loop 2 14) (str.to_re "1")) ((_ re.loop 1 14) (str.to_re "^UZ")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 12) (str.to_re "pzG")) (re.++ ((_ re.loop 2 16) (str.to_re "BV")) (re.++ ((_ re.loop 4 19) (str.to_re "`")) ((_ re.loop 5 18) (str.to_re "Wo0")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 19) (str.to_re "Z:(")) (re.++ ((_ re.loop 1 6) (str.to_re "R:`")) (re.++ ((_ re.loop 3 5) (str.to_re "SVY")) ((_ re.loop 2 10) (str.to_re "R")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 2 8) (str.to_re "t>_")) (re.++ ((_ re.loop 4 6) (str.to_re "Cah")) (re.++ ((_ re.loop 0 11) (str.to_re "~")) ((_ re.loop 4 17) (str.to_re "m{r")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)