(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 1) (re.++ ((_ re.loop 0 14) (str.to_re "<!d")) (re.++ ((_ re.loop 0 5) (str.to_re "7%")) (re.++ ((_ re.loop 1 11) (str.to_re "?\u0022")) ((_ re.loop 1 15) (str.to_re "n")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 5 11) (str.to_re "4")) (re.++ ((_ re.loop 5 8) (str.to_re "&KY")) (re.++ ((_ re.loop 2 20) (str.to_re "pb}")) ((_ re.loop 5 8) (str.to_re "5n/")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 0 5) (str.to_re ">Q")) (re.++ ((_ re.loop 5 13) (str.to_re "2e")) (re.++ ((_ re.loop 5 6) (str.to_re "_")) ((_ re.loop 4 6) (str.to_re "U")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 5 10) (str.to_re "O~")) (re.++ ((_ re.loop 3 5) (str.to_re "ua`")) (re.++ ((_ re.loop 5 20) (str.to_re "ec")) ((_ re.loop 0 15) (str.to_re "R")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)