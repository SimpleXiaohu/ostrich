(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 13) (str.to_re "('")) (re.++ ((_ re.loop 3 16) (str.to_re "d*]")) (re.++ ((_ re.loop 3 15) (str.to_re "B")) ((_ re.loop 5 11) (str.to_re "Bkm")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 5) (str.to_re "!")) (re.++ ((_ re.loop 4 5) (str.to_re "`}+")) (re.++ ((_ re.loop 2 5) (str.to_re "J|S")) ((_ re.loop 5 13) (str.to_re ";-")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 4 12) (str.to_re "l,-")) (re.++ ((_ re.loop 2 16) (str.to_re "aV")) (re.++ ((_ re.loop 3 6) (str.to_re "_")) ((_ re.loop 1 7) (str.to_re "DN")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 4 7) (str.to_re "W5")) (re.++ ((_ re.loop 1 14) (str.to_re "4N")) (re.++ ((_ re.loop 2 12) (str.to_re "MT")) ((_ re.loop 2 13) (str.to_re "0")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
