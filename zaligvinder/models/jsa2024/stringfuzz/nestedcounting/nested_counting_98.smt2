(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 2 9) (str.to_re "x'u")) (re.++ ((_ re.loop 4 9) (str.to_re "Olc")) (re.++ ((_ re.loop 1 5) (str.to_re "|")) ((_ re.loop 3 11) (str.to_re "4q")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 0 19) (str.to_re "/")) (re.++ ((_ re.loop 3 9) (str.to_re "\u0022Ud")) (re.++ ((_ re.loop 5 6) (str.to_re "@")) ((_ re.loop 1 10) (str.to_re "+]")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 12) (str.to_re "'/I")) (re.++ ((_ re.loop 0 18) (str.to_re "yA")) (re.++ ((_ re.loop 1 12) (str.to_re "&7g")) ((_ re.loop 0 5) (str.to_re "_")))))) ((_ re.loop 0 1) (re.++ ((_ re.loop 3 18) (str.to_re "OR")) (re.++ ((_ re.loop 4 19) (str.to_re "?]7")) (re.++ ((_ re.loop 4 12) (str.to_re "$b")) ((_ re.loop 1 15) (str.to_re "e")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
