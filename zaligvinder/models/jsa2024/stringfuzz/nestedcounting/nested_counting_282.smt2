(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 9) (str.to_re "qB")) (re.++ ((_ re.loop 2 5) (str.to_re "4;4")) (re.++ ((_ re.loop 2 7) (str.to_re "T")) ((_ re.loop 1 11) (str.to_re "l")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 15) (str.to_re ">n=")) (re.++ ((_ re.loop 4 12) (str.to_re "6Y")) (re.++ ((_ re.loop 1 13) (str.to_re "9")) ((_ re.loop 5 6) (str.to_re "x")))))) (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 0 9) (str.to_re "~I")) (re.++ ((_ re.loop 3 6) (str.to_re "M,f")) (re.++ ((_ re.loop 3 12) (str.to_re "_")) ((_ re.loop 0 13) (str.to_re ";")))))) ((_ re.loop 1 4) (re.++ ((_ re.loop 2 13) (str.to_re "ido")) (re.++ ((_ re.loop 1 15) (str.to_re "&^f")) (re.++ ((_ re.loop 0 7) (str.to_re "FBz")) ((_ re.loop 3 6) (str.to_re "'3")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)