(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 5) (str.to_re "G!n")) (re.++ ((_ re.loop 5 8) (str.to_re "L")) (re.++ ((_ re.loop 0 13) (str.to_re "l#")) ((_ re.loop 2 15) (str.to_re "p-")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 19) (str.to_re "-")) (re.++ ((_ re.loop 3 5) (str.to_re "uIC")) (re.++ ((_ re.loop 3 14) (str.to_re "2N%")) ((_ re.loop 0 10) (str.to_re "['h")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 19) (str.to_re "}X")) (re.++ ((_ re.loop 0 13) (str.to_re "ec7")) (re.++ ((_ re.loop 0 13) (str.to_re "tv4")) ((_ re.loop 0 20) (str.to_re "=")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 0 12) (str.to_re "b~%")) (re.++ ((_ re.loop 2 20) (str.to_re "*")) (re.++ ((_ re.loop 3 7) (str.to_re "Xy")) ((_ re.loop 3 20) (str.to_re "39N")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
