(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 4 7) (str.to_re "rw")) (re.++ ((_ re.loop 4 19) (str.to_re "W3J")) (re.++ ((_ re.loop 1 18) (str.to_re "1Ok")) ((_ re.loop 5 16) (str.to_re "|")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 2 6) (str.to_re "$C9")) (re.++ ((_ re.loop 2 17) (str.to_re "?")) (re.++ ((_ re.loop 3 15) (str.to_re "u")) ((_ re.loop 4 11) (str.to_re "60f")))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 13) (str.to_re "M")) (re.++ ((_ re.loop 4 17) (str.to_re "YjW")) (re.++ ((_ re.loop 5 6) (str.to_re "ZB")) ((_ re.loop 5 9) (str.to_re "@H")))))) ((_ re.loop 0 1) (re.++ ((_ re.loop 1 20) (str.to_re "J")) (re.++ ((_ re.loop 4 6) (str.to_re "C1")) (re.++ ((_ re.loop 0 13) (str.to_re "D")) ((_ re.loop 0 18) (str.to_re ")TP")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
