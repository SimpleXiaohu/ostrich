(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 3 8) (str.to_re "Z~")) (re.++ ((_ re.loop 1 10) (str.to_re "0mB")) (re.++ ((_ re.loop 5 15) (str.to_re "T^0")) ((_ re.loop 0 18) (str.to_re "8p_")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 12) (str.to_re "9|:")) (re.++ ((_ re.loop 2 15) (str.to_re "V6O")) (re.++ ((_ re.loop 5 15) (str.to_re "N;")) ((_ re.loop 5 11) (str.to_re "b/")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 5 6) (str.to_re "4&1")) (re.++ ((_ re.loop 1 14) (str.to_re "w/J")) (re.++ ((_ re.loop 2 20) (str.to_re "l_")) ((_ re.loop 2 11) (str.to_re "`5-")))))) ((_ re.loop 0 6) (re.++ ((_ re.loop 0 20) (str.to_re "~st")) (re.++ ((_ re.loop 5 20) (str.to_re ")Q")) (re.++ ((_ re.loop 4 9) (str.to_re ",M")) ((_ re.loop 2 16) (str.to_re "s[")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)