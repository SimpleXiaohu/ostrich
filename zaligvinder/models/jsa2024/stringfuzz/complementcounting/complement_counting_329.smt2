(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 8 283) (re.++ (re.union (str.to_re "~!e") (re.union (str.to_re "-%g") (re.union (str.to_re "v") (str.to_re "a.")))) (re.++ (re.union (str.to_re "X$t") (re.union (str.to_re "6GR") (re.union (str.to_re "\u0022") (str.to_re "GDt")))) (re.++ (re.union (str.to_re "N{") (re.union (str.to_re "7") (re.union (str.to_re "k9") (str.to_re "-l")))) (re.union (str.to_re "8") (re.union (str.to_re "q") (re.union (str.to_re ",4?") (str.to_re ".")))))))) (re.++ ((_ re.loop 0 545) (re.++ (re.union (str.to_re "(") (re.union (str.to_re "SW") (re.union (str.to_re ":\\") (str.to_re "BIn")))) (re.++ (re.union (str.to_re "%") (re.union (str.to_re "?sk") (re.union (str.to_re "D:") (str.to_re "F(I")))) (re.++ (re.union (str.to_re "pv") (re.union (str.to_re "HZk") (re.union (str.to_re "ZO'") (str.to_re "n")))) (re.union (str.to_re "1") (re.union (str.to_re ")") (re.union (str.to_re "$F") (str.to_re "^")))))))) (re.++ ((_ re.loop 7 842) (re.++ (re.union (str.to_re "B") (re.union (str.to_re "1X>") (re.union (str.to_re "q") (str.to_re "H")))) (re.++ (re.union (str.to_re "KQx") (re.union (str.to_re "SU") (re.union (str.to_re "j") (str.to_re "N][")))) (re.++ (re.union (str.to_re "cJ") (re.union (str.to_re "}x") (re.union (str.to_re "%LB") (str.to_re "0W{")))) (re.union (str.to_re "=") (re.union (str.to_re "A@T") (re.union (str.to_re "nsZ") (str.to_re "Oa#")))))))) ((_ re.loop 19 43) (re.++ (re.union (str.to_re "H4s") (re.union (str.to_re "1") (re.union (str.to_re "W)") (str.to_re "F{t")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "6/") (re.union (str.to_re "c") (str.to_re "B>-")))) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "5T") (re.union (str.to_re "n") (str.to_re "#")))) (re.union (str.to_re "l:") (re.union (str.to_re "nd5") (re.union (str.to_re "?") (str.to_re "zr")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 7 830) (re.++ (re.union (str.to_re "M") (re.union (str.to_re "wCu") (re.union (str.to_re "vf") (str.to_re "~\u0022")))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re "5r") (re.union (str.to_re "^1t") (str.to_re "P")))) (re.++ (re.union (str.to_re "^") (re.union (str.to_re "\u0022Q") (re.union (str.to_re "hC") (str.to_re "yj")))) (re.union (str.to_re "k") (re.union (str.to_re "Ul") (re.union (str.to_re "t~f") (str.to_re "O/")))))))) (re.++ ((_ re.loop 5 657) (re.++ (re.union (str.to_re "3") (re.union (str.to_re "yX_") (re.union (str.to_re "$") (str.to_re "}")))) (re.++ (re.union (str.to_re "(w") (re.union (str.to_re "]Z") (re.union (str.to_re "fJ") (str.to_re "FQ")))) (re.++ (re.union (str.to_re "g>'") (re.union (str.to_re "se") (re.union (str.to_re "x") (str.to_re "g45")))) (re.union (str.to_re "v*") (re.union (str.to_re "34") (re.union (str.to_re "5H2") (str.to_re "8v")))))))) (re.++ ((_ re.loop 0 109) (re.++ (re.union (str.to_re "Z") (re.union (str.to_re "GI}") (re.union (str.to_re "~To") (str.to_re "C")))) (re.++ (re.union (str.to_re "&H") (re.union (str.to_re "xgb") (re.union (str.to_re "mx/") (str.to_re "b4r")))) (re.++ (re.union (str.to_re "V") (re.union (str.to_re "A0") (re.union (str.to_re "i") (str.to_re "z")))) (re.union (str.to_re "`L") (re.union (str.to_re "Aor") (re.union (str.to_re "0") (str.to_re "?")))))))) ((_ re.loop 15 391) (re.++ (re.union (str.to_re "u^}") (re.union (str.to_re "tp\\") (re.union (str.to_re "6<") (str.to_re "~x")))) (re.++ (re.union (str.to_re "&?r") (re.union (str.to_re "'6$") (re.union (str.to_re "'") (str.to_re "C1")))) (re.++ (re.union (str.to_re "8dj") (re.union (str.to_re "sg") (re.union (str.to_re "w:") (str.to_re "~E")))) (re.union (str.to_re "y") (re.union (str.to_re "#G") (re.union (str.to_re "d") (str.to_re "J"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
