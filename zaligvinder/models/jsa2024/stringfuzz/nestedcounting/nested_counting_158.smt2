(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 2 10) (str.to_re "MO,")) (re.++ ((_ re.loop 0 16) (str.to_re "E")) (re.++ ((_ re.loop 1 8) (str.to_re "i<")) ((_ re.loop 5 14) (str.to_re "ze")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 2 18) (str.to_re "#i")) (re.++ ((_ re.loop 3 16) (str.to_re "@")) (re.++ ((_ re.loop 0 19) (str.to_re "LZ")) ((_ re.loop 3 5) (str.to_re "0<{")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 0 20) (str.to_re "qn")) (re.++ ((_ re.loop 1 14) (str.to_re "3K")) (re.++ ((_ re.loop 2 16) (str.to_re ".x9")) ((_ re.loop 1 11) (str.to_re "z")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 3 17) (str.to_re "K")) (re.++ ((_ re.loop 1 18) (str.to_re ";r?")) (re.++ ((_ re.loop 4 8) (str.to_re "F")) ((_ re.loop 4 16) (str.to_re "7#_")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
