(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 2 13) (str.to_re "v$")) (re.++ ((_ re.loop 4 17) (str.to_re "L")) (re.++ ((_ re.loop 3 20) (str.to_re "g3")) ((_ re.loop 5 12) (str.to_re "Xo]")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 6) (str.to_re "O")) (re.++ ((_ re.loop 4 9) (str.to_re "^rY")) (re.++ ((_ re.loop 5 11) (str.to_re "Em9")) ((_ re.loop 0 15) (str.to_re "YD")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 2 18) (str.to_re "l")) (re.++ ((_ re.loop 2 10) (str.to_re "uv{")) (re.++ ((_ re.loop 1 20) (str.to_re "U2")) ((_ re.loop 4 18) (str.to_re "H")))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 2 11) (str.to_re "D,")) (re.++ ((_ re.loop 3 5) (str.to_re ".8")) (re.++ ((_ re.loop 1 8) (str.to_re "*D")) ((_ re.loop 0 16) (str.to_re "H")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)