(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 11) (str.to_re "#7")) (re.++ ((_ re.loop 2 10) (str.to_re "p")) (re.++ ((_ re.loop 3 12) (str.to_re "cL")) ((_ re.loop 5 20) (str.to_re "<(")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 5 14) (str.to_re "@%")) (re.++ ((_ re.loop 4 16) (str.to_re "{")) (re.++ ((_ re.loop 3 6) (str.to_re "~\u0022")) ((_ re.loop 1 10) (str.to_re "Mk")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 4 5) (str.to_re "}")) (re.++ ((_ re.loop 2 16) (str.to_re "a")) (re.++ ((_ re.loop 0 11) (str.to_re "5]V")) ((_ re.loop 5 8) (str.to_re "aZ")))))) ((_ re.loop 1 6) (re.++ ((_ re.loop 0 12) (str.to_re "\\<")) (re.++ ((_ re.loop 2 11) (str.to_re "{tU")) (re.++ ((_ re.loop 4 7) (str.to_re "rd")) ((_ re.loop 5 7) (str.to_re "o`T")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)