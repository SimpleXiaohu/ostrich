(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 11) (str.to_re ";")) (re.++ ((_ re.loop 0 13) (str.to_re "z")) (re.++ ((_ re.loop 1 9) (str.to_re "i")) ((_ re.loop 2 12) (str.to_re "W")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 11) (str.to_re "mx")) (re.++ ((_ re.loop 5 9) (str.to_re "o2P")) (re.++ ((_ re.loop 5 13) (str.to_re "w")) ((_ re.loop 2 6) (str.to_re "o;2")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 4 11) (str.to_re "!")) (re.++ ((_ re.loop 4 8) (str.to_re "hj")) (re.++ ((_ re.loop 2 20) (str.to_re "-Qr")) ((_ re.loop 2 10) (str.to_re "X1")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 3 10) (str.to_re "G~J")) (re.++ ((_ re.loop 0 14) (str.to_re "=")) (re.++ ((_ re.loop 0 8) (str.to_re "B!")) ((_ re.loop 4 12) (str.to_re "=(")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
