(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 0 20) (str.to_re "HOK")) (re.++ ((_ re.loop 4 15) (str.to_re "QuR")) (re.++ ((_ re.loop 4 14) (str.to_re "d")) ((_ re.loop 2 8) (str.to_re "Y4A")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 5) (str.to_re "IZ")) (re.++ ((_ re.loop 0 11) (str.to_re "w9")) (re.++ ((_ re.loop 5 6) (str.to_re "`w\\")) ((_ re.loop 2 19) (str.to_re "Q")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 3 20) (str.to_re "K$")) (re.++ ((_ re.loop 5 16) (str.to_re "U")) (re.++ ((_ re.loop 1 11) (str.to_re "1d")) ((_ re.loop 1 7) (str.to_re "W6")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 2 7) (str.to_re "UQ>")) (re.++ ((_ re.loop 2 13) (str.to_re "H`")) (re.++ ((_ re.loop 3 14) (str.to_re "iF")) ((_ re.loop 3 12) (str.to_re "f")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)