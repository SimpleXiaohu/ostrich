(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 6) (str.to_re "1]")) (re.++ ((_ re.loop 3 7) (str.to_re ",IU")) (re.++ ((_ re.loop 0 7) (str.to_re "?mg")) ((_ re.loop 5 12) (str.to_re "sl")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 3 13) (str.to_re "N%k")) (re.++ ((_ re.loop 1 5) (str.to_re ";/.")) (re.++ ((_ re.loop 2 6) (str.to_re "t'")) ((_ re.loop 0 12) (str.to_re "V")))))) (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 1 18) (str.to_re "Bk")) (re.++ ((_ re.loop 3 12) (str.to_re "`o#")) (re.++ ((_ re.loop 3 5) (str.to_re "F")) ((_ re.loop 1 16) (str.to_re "C")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 0 12) (str.to_re "5<r")) (re.++ ((_ re.loop 1 11) (str.to_re ":eA")) (re.++ ((_ re.loop 5 14) (str.to_re "(|Y")) ((_ re.loop 5 18) (str.to_re "X")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
