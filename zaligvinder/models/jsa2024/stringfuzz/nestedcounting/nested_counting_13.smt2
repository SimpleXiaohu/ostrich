(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 6) (str.to_re "o6")) (re.++ ((_ re.loop 4 18) (str.to_re "X/")) (re.++ ((_ re.loop 2 13) (str.to_re "szk")) ((_ re.loop 0 11) (str.to_re "h")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 0 16) (str.to_re "1GX")) (re.++ ((_ re.loop 4 17) (str.to_re "Hsp")) (re.++ ((_ re.loop 3 17) (str.to_re "]xA")) ((_ re.loop 4 10) (str.to_re "q")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 3 8) (str.to_re "Y!|")) (re.++ ((_ re.loop 0 8) (str.to_re "M@")) (re.++ ((_ re.loop 4 16) (str.to_re "8\u0022")) ((_ re.loop 3 9) (str.to_re "u")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 5 7) (str.to_re "gn")) (re.++ ((_ re.loop 3 11) (str.to_re ">>")) (re.++ ((_ re.loop 0 17) (str.to_re ".[")) ((_ re.loop 2 6) (str.to_re "n&")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
