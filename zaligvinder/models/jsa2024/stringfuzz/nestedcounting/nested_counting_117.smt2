(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 5) (str.to_re "E{")) (re.++ ((_ re.loop 3 8) (str.to_re "Kb")) (re.++ ((_ re.loop 0 19) (str.to_re "5")) ((_ re.loop 1 17) (str.to_re "b{!")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 3 5) (str.to_re "19")) (re.++ ((_ re.loop 3 14) (str.to_re "\u0022R")) (re.++ ((_ re.loop 0 15) (str.to_re "F!")) ((_ re.loop 2 5) (str.to_re "g{5")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 4 5) (str.to_re "f")) (re.++ ((_ re.loop 1 10) (str.to_re "(Z")) (re.++ ((_ re.loop 4 9) (str.to_re "hm")) ((_ re.loop 1 14) (str.to_re "j0h")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 0 17) (str.to_re "[`")) (re.++ ((_ re.loop 4 20) (str.to_re "9ep")) (re.++ ((_ re.loop 2 11) (str.to_re "JYt")) ((_ re.loop 1 7) (str.to_re "]V-")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)