(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 3 19) (str.to_re "{i")) (re.++ ((_ re.loop 5 15) (str.to_re "y")) (re.++ ((_ re.loop 0 9) (str.to_re "ev")) ((_ re.loop 5 11) (str.to_re "t")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 0 5) (str.to_re ")?-")) (re.++ ((_ re.loop 1 11) (str.to_re "J")) (re.++ ((_ re.loop 0 19) (str.to_re "GW\\")) ((_ re.loop 4 17) (str.to_re "K,'")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 14) (str.to_re "{1")) (re.++ ((_ re.loop 3 10) (str.to_re "!")) (re.++ ((_ re.loop 5 17) (str.to_re "N$")) ((_ re.loop 2 20) (str.to_re "d}`")))))) ((_ re.loop 0 1) (re.++ ((_ re.loop 5 15) (str.to_re "k")) (re.++ ((_ re.loop 3 5) (str.to_re "k1L")) (re.++ ((_ re.loop 4 6) (str.to_re "Y")) ((_ re.loop 1 13) (str.to_re "uMd")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)