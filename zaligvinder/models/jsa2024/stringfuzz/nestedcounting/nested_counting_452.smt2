(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 0 16) (str.to_re "Jb")) (re.++ ((_ re.loop 2 10) (str.to_re "Mf")) (re.++ ((_ re.loop 3 20) (str.to_re "b^_")) ((_ re.loop 4 7) (str.to_re "XR)")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 18) (str.to_re "'")) (re.++ ((_ re.loop 0 10) (str.to_re "'")) (re.++ ((_ re.loop 5 10) (str.to_re "1l8")) ((_ re.loop 2 7) (str.to_re "Qr{")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 4 10) (str.to_re ",")) (re.++ ((_ re.loop 3 10) (str.to_re "GI")) (re.++ ((_ re.loop 1 13) (str.to_re "]kB")) ((_ re.loop 3 12) (str.to_re "9")))))) ((_ re.loop 0 2) (re.++ ((_ re.loop 4 20) (str.to_re "L")) (re.++ ((_ re.loop 4 14) (str.to_re "sF")) (re.++ ((_ re.loop 0 5) (str.to_re "ngS")) ((_ re.loop 4 7) (str.to_re "n")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
