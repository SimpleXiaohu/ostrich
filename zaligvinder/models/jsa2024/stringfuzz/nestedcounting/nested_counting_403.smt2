(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 18) (str.to_re "f$S")) (re.++ ((_ re.loop 0 13) (str.to_re "i;")) (re.++ ((_ re.loop 4 19) (str.to_re "Ad")) ((_ re.loop 2 14) (str.to_re "*d")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 0 13) (str.to_re ",|")) (re.++ ((_ re.loop 0 9) (str.to_re "CF")) (re.++ ((_ re.loop 5 15) (str.to_re "u\\")) ((_ re.loop 2 9) (str.to_re "Jh")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 9) (str.to_re "z")) (re.++ ((_ re.loop 1 18) (str.to_re "t")) (re.++ ((_ re.loop 5 16) (str.to_re "QUd")) ((_ re.loop 4 12) (str.to_re "ir")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 4 14) (str.to_re "xEc")) (re.++ ((_ re.loop 1 5) (str.to_re "3a")) (re.++ ((_ re.loop 2 13) (str.to_re "p")) ((_ re.loop 1 6) (str.to_re "6")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
