(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 18) (str.to_re "0N@")) (re.++ ((_ re.loop 1 15) (str.to_re "!D")) (re.++ ((_ re.loop 3 20) (str.to_re "W")) ((_ re.loop 1 9) (str.to_re "Oq5")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 4 18) (str.to_re "fI")) (re.++ ((_ re.loop 1 14) (str.to_re "j@")) (re.++ ((_ re.loop 2 20) (str.to_re ":QS")) ((_ re.loop 3 6) (str.to_re "9")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 20) (str.to_re "m")) (re.++ ((_ re.loop 0 20) (str.to_re "&")) (re.++ ((_ re.loop 5 15) (str.to_re "~-6")) ((_ re.loop 1 8) (str.to_re "G")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 1 9) (str.to_re "M")) (re.++ ((_ re.loop 2 14) (str.to_re "J")) (re.++ ((_ re.loop 3 8) (str.to_re "U1B")) ((_ re.loop 0 11) (str.to_re "`^")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
