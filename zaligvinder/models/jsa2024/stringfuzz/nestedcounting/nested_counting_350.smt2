(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 5 7) (str.to_re "FI")) (re.++ ((_ re.loop 4 6) (str.to_re "WHo")) (re.++ ((_ re.loop 3 5) (str.to_re "o4")) ((_ re.loop 0 17) (str.to_re "g:r")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 7) (str.to_re "m")) (re.++ ((_ re.loop 5 16) (str.to_re "}|h")) (re.++ ((_ re.loop 4 9) (str.to_re "Yk")) ((_ re.loop 0 6) (str.to_re "%")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 5 12) (str.to_re "ZL")) (re.++ ((_ re.loop 1 14) (str.to_re "[gO")) (re.++ ((_ re.loop 2 17) (str.to_re "9$b")) ((_ re.loop 1 18) (str.to_re "W")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 3 10) (str.to_re "c")) (re.++ ((_ re.loop 2 13) (str.to_re "8")) (re.++ ((_ re.loop 5 14) (str.to_re "Xy")) ((_ re.loop 1 10) (str.to_re "e1")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)