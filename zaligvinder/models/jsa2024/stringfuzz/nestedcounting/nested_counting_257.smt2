(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 2 11) (str.to_re "e")) (re.++ ((_ re.loop 2 16) (str.to_re "y")) (re.++ ((_ re.loop 3 6) (str.to_re "[")) ((_ re.loop 0 10) (str.to_re "Uq-")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 5 12) (str.to_re "fA'")) (re.++ ((_ re.loop 5 6) (str.to_re "KSC")) (re.++ ((_ re.loop 4 18) (str.to_re "s")) ((_ re.loop 1 12) (str.to_re "\u0022l$")))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 2 19) (str.to_re "!")) (re.++ ((_ re.loop 4 5) (str.to_re "m^E")) (re.++ ((_ re.loop 1 12) (str.to_re "Y'g")) ((_ re.loop 2 19) (str.to_re "Dg")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 0 15) (str.to_re "%")) (re.++ ((_ re.loop 5 11) (str.to_re "XJ")) (re.++ ((_ re.loop 3 13) (str.to_re "WU+")) ((_ re.loop 0 18) (str.to_re "2fM")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
