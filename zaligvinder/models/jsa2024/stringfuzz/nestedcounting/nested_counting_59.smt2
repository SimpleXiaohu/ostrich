(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 3 5) (str.to_re "n3(")) (re.++ ((_ re.loop 3 5) (str.to_re "Ib")) (re.++ ((_ re.loop 1 5) (str.to_re "aCu")) ((_ re.loop 1 5) (str.to_re ",N")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 11) (str.to_re "*M:")) (re.++ ((_ re.loop 5 5) (str.to_re ",$")) (re.++ ((_ re.loop 1 12) (str.to_re "YDo")) ((_ re.loop 2 19) (str.to_re "/_")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 0 6) (str.to_re "o")) (re.++ ((_ re.loop 4 7) (str.to_re "P%")) (re.++ ((_ re.loop 0 7) (str.to_re "X|J")) ((_ re.loop 2 17) (str.to_re "(j")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 1 9) (str.to_re "}'")) (re.++ ((_ re.loop 4 13) (str.to_re "$")) (re.++ ((_ re.loop 2 18) (str.to_re "5\\")) ((_ re.loop 4 5) (str.to_re "E")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
