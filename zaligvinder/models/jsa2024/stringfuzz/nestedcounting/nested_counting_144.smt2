(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 3 7) (str.to_re "7b")) (re.++ ((_ re.loop 3 9) (str.to_re "xH")) (re.++ ((_ re.loop 1 13) (str.to_re "-")) ((_ re.loop 5 19) (str.to_re "^")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 16) (str.to_re "ef`")) (re.++ ((_ re.loop 2 14) (str.to_re "z")) (re.++ ((_ re.loop 2 11) (str.to_re "1q")) ((_ re.loop 1 18) (str.to_re "Q{[")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 17) (str.to_re "OF5")) (re.++ ((_ re.loop 3 10) (str.to_re "@")) (re.++ ((_ re.loop 0 7) (str.to_re ":;N")) ((_ re.loop 5 6) (str.to_re "70")))))) ((_ re.loop 0 4) (re.++ ((_ re.loop 4 20) (str.to_re ">x#")) (re.++ ((_ re.loop 5 17) (str.to_re ")+{")) (re.++ ((_ re.loop 0 12) (str.to_re "\\")) ((_ re.loop 5 13) (str.to_re "S]")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
