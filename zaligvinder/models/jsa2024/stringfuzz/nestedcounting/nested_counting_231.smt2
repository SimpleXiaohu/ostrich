(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 17) (str.to_re "SP\\")) (re.++ ((_ re.loop 2 20) (str.to_re ";")) (re.++ ((_ re.loop 0 20) (str.to_re "KJ")) ((_ re.loop 1 19) (str.to_re "V-")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 16) (str.to_re "sD|")) (re.++ ((_ re.loop 0 8) (str.to_re "Ns")) (re.++ ((_ re.loop 4 18) (str.to_re "00")) ((_ re.loop 1 8) (str.to_re "Dn~")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 2 10) (str.to_re "5K]")) (re.++ ((_ re.loop 1 11) (str.to_re "0=")) (re.++ ((_ re.loop 4 12) (str.to_re "7f")) ((_ re.loop 5 16) (str.to_re "nPy")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 4 19) (str.to_re "z`t")) (re.++ ((_ re.loop 5 11) (str.to_re "\u00224l")) (re.++ ((_ re.loop 2 13) (str.to_re "mO")) ((_ re.loop 2 6) (str.to_re "#<")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)