(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 4 16) (str.to_re "/+K")) (re.++ ((_ re.loop 1 11) (str.to_re "7J")) (re.++ ((_ re.loop 3 7) (str.to_re ")?")) ((_ re.loop 5 11) (str.to_re "1u")))))) (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 3 12) (str.to_re "l")) (re.++ ((_ re.loop 2 6) (str.to_re ";s_")) (re.++ ((_ re.loop 2 17) (str.to_re "@")) ((_ re.loop 1 15) (str.to_re "]")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 11) (str.to_re "Uj")) (re.++ ((_ re.loop 5 13) (str.to_re "]`*")) (re.++ ((_ re.loop 3 9) (str.to_re "20e")) ((_ re.loop 0 18) (str.to_re "R")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 1 9) (str.to_re "V91")) (re.++ ((_ re.loop 0 10) (str.to_re "w")) (re.++ ((_ re.loop 4 13) (str.to_re "`5")) ((_ re.loop 2 18) (str.to_re "*k")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
