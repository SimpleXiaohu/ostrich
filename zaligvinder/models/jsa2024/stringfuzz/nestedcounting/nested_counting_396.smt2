(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 0 12) (str.to_re "RN")) (re.++ ((_ re.loop 0 5) (str.to_re "O0")) (re.++ ((_ re.loop 0 11) (str.to_re "zFs")) ((_ re.loop 3 18) (str.to_re "Tj")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 0 7) (str.to_re "A;v")) (re.++ ((_ re.loop 4 12) (str.to_re "v2")) (re.++ ((_ re.loop 4 15) (str.to_re "WgQ")) ((_ re.loop 5 20) (str.to_re ".")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 5) (str.to_re "59P")) (re.++ ((_ re.loop 4 7) (str.to_re "K>A")) (re.++ ((_ re.loop 4 7) (str.to_re "%I")) ((_ re.loop 0 17) (str.to_re "@")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 3 8) (str.to_re "Q;")) (re.++ ((_ re.loop 0 19) (str.to_re "%&")) (re.++ ((_ re.loop 5 16) (str.to_re "g")) ((_ re.loop 4 9) (str.to_re "{FK")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
