(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 10) (str.to_re "T@R")) (re.++ ((_ re.loop 0 19) (str.to_re "fr6")) (re.++ ((_ re.loop 2 9) (str.to_re "YkW")) ((_ re.loop 1 11) (str.to_re "}=")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 8) (str.to_re "5")) (re.++ ((_ re.loop 4 13) (str.to_re "Y")) (re.++ ((_ re.loop 2 8) (str.to_re "/'")) ((_ re.loop 5 5) (str.to_re "s]")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 2 9) (str.to_re "?3")) (re.++ ((_ re.loop 5 20) (str.to_re "?(c")) (re.++ ((_ re.loop 2 14) (str.to_re "7")) ((_ re.loop 4 7) (str.to_re "Vt")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 0 17) (str.to_re "f")) (re.++ ((_ re.loop 2 6) (str.to_re "oy9")) (re.++ ((_ re.loop 3 20) (str.to_re "L")) ((_ re.loop 5 18) (str.to_re "_l-")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)