(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 0 18) (str.to_re "?v")) (re.++ ((_ re.loop 5 15) (str.to_re "7")) (re.++ ((_ re.loop 2 5) (str.to_re "T|z")) ((_ re.loop 1 18) (str.to_re "l")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 15) (str.to_re ":KU")) (re.++ ((_ re.loop 3 14) (str.to_re ";")) (re.++ ((_ re.loop 4 7) (str.to_re "A")) ((_ re.loop 4 7) (str.to_re "blk")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 5 7) (str.to_re ">")) (re.++ ((_ re.loop 2 19) (str.to_re "?as")) (re.++ ((_ re.loop 0 15) (str.to_re "R9.")) ((_ re.loop 0 17) (str.to_re "K^d")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 0 11) (str.to_re "Y")) (re.++ ((_ re.loop 1 7) (str.to_re "#I")) (re.++ ((_ re.loop 4 7) (str.to_re "m")) ((_ re.loop 5 12) (str.to_re "Tbv")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)