(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 2 18) (str.to_re "K")) (re.++ ((_ re.loop 0 18) (str.to_re "g%V")) (re.++ ((_ re.loop 5 8) (str.to_re "5")) ((_ re.loop 1 15) (str.to_re "HXo")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 5 11) (str.to_re "C@c")) (re.++ ((_ re.loop 1 6) (str.to_re "xP")) (re.++ ((_ re.loop 2 13) (str.to_re "c.2")) ((_ re.loop 3 11) (str.to_re "6{")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 4 9) (str.to_re "@]7")) (re.++ ((_ re.loop 5 8) (str.to_re "YU")) (re.++ ((_ re.loop 5 14) (str.to_re "\u0022S")) ((_ re.loop 4 5) (str.to_re "}kh")))))) ((_ re.loop 1 5) (re.++ ((_ re.loop 2 18) (str.to_re "F&8")) (re.++ ((_ re.loop 1 7) (str.to_re "}!4")) (re.++ ((_ re.loop 1 8) (str.to_re "cX")) ((_ re.loop 3 10) (str.to_re "/")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
