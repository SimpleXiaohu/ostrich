(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 1 9) (str.to_re "lu|")) (re.++ ((_ re.loop 1 15) (str.to_re "q")) (re.++ ((_ re.loop 4 7) (str.to_re ":Ww")) ((_ re.loop 2 8) (str.to_re "J")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 11) (str.to_re "a!Z")) (re.++ ((_ re.loop 0 13) (str.to_re "k")) (re.++ ((_ re.loop 0 10) (str.to_re "G")) ((_ re.loop 2 19) (str.to_re "'-8")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 5 19) (str.to_re "S")) (re.++ ((_ re.loop 5 13) (str.to_re "N")) (re.++ ((_ re.loop 4 11) (str.to_re "Z")) ((_ re.loop 0 7) (str.to_re "0C")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 3 16) (str.to_re "0h")) (re.++ ((_ re.loop 5 14) (str.to_re ",")) (re.++ ((_ re.loop 1 10) (str.to_re "?NH")) ((_ re.loop 5 5) (str.to_re "M\u0022")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)