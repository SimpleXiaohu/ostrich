(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 0 249) (re.++ (re.union (str.to_re "lM") (re.union (str.to_re ":") (re.union (str.to_re "Q>6") (str.to_re "2:")))) (re.++ (re.union (str.to_re "vJx") (re.union (str.to_re ".'") (re.union (str.to_re "5") (str.to_re "<")))) (re.++ (re.union (str.to_re "f2") (re.union (str.to_re "*Q") (re.union (str.to_re "1G") (str.to_re "^V")))) (re.union (str.to_re ">") (re.union (str.to_re ",\\X") (re.union (str.to_re "s\u0022") (str.to_re "j")))))))) (re.++ ((_ re.loop 11 255) (re.++ (re.union (str.to_re "MBN") (re.union (str.to_re "4/T") (re.union (str.to_re "Z") (str.to_re "y")))) (re.++ (re.union (str.to_re "Z+E") (re.union (str.to_re "os") (re.union (str.to_re "N/1") (str.to_re "))")))) (re.++ (re.union (str.to_re ".") (re.union (str.to_re "3\\D") (re.union (str.to_re "8") (str.to_re "D")))) (re.union (str.to_re "+kD") (re.union (str.to_re "u") (re.union (str.to_re ":D5") (str.to_re "%[")))))))) (re.++ ((_ re.loop 6 459) (re.++ (re.union (str.to_re "=x~") (re.union (str.to_re "C") (re.union (str.to_re "+SP") (str.to_re "V")))) (re.++ (re.union (str.to_re "\\Y") (re.union (str.to_re "4BZ") (re.union (str.to_re "~9") (str.to_re ",")))) (re.++ (re.union (str.to_re "$+") (re.union (str.to_re "ex") (re.union (str.to_re "W7") (str.to_re "Q")))) (re.union (str.to_re ";~(") (re.union (str.to_re "a") (re.union (str.to_re "U") (str.to_re "&F6")))))))) ((_ re.loop 5 988) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "Czk") (re.union (str.to_re "~5") (str.to_re "3;x")))) (re.++ (re.union (str.to_re "n") (re.union (str.to_re "7") (re.union (str.to_re "+`") (str.to_re "7")))) (re.++ (re.union (str.to_re "{N") (re.union (str.to_re "/:") (re.union (str.to_re "o") (str.to_re "a")))) (re.union (str.to_re "1UL") (re.union (str.to_re "EYl") (re.union (str.to_re "!") (str.to_re "[H>"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 18 446) (re.++ (re.union (str.to_re "~Vw") (re.union (str.to_re "r") (re.union (str.to_re "[") (str.to_re "YF")))) (re.++ (re.union (str.to_re "=fO") (re.union (str.to_re "#") (re.union (str.to_re ":") (str.to_re "E\\e")))) (re.++ (re.union (str.to_re "=") (re.union (str.to_re "fQS") (re.union (str.to_re ")") (str.to_re "`G")))) (re.union (str.to_re "H") (re.union (str.to_re "`cX") (re.union (str.to_re "e^") (str.to_re "X")))))))) (re.++ ((_ re.loop 0 721) (re.++ (re.union (str.to_re "FL=") (re.union (str.to_re "r~") (re.union (str.to_re "E$") (str.to_re "90")))) (re.++ (re.union (str.to_re "6Fo") (re.union (str.to_re "B(") (re.union (str.to_re "5") (str.to_re "M")))) (re.++ (re.union (str.to_re "TF") (re.union (str.to_re "`s8") (re.union (str.to_re "4Bc") (str.to_re "h")))) (re.union (str.to_re "ikx") (re.union (str.to_re "i") (re.union (str.to_re "m58") (str.to_re "+")))))))) (re.++ ((_ re.loop 6 524) (re.++ (re.union (str.to_re "q1") (re.union (str.to_re "i;") (re.union (str.to_re "-") (str.to_re "Zrh")))) (re.++ (re.union (str.to_re "[$J") (re.union (str.to_re "=gv") (re.union (str.to_re "y") (str.to_re "a")))) (re.++ (re.union (str.to_re "I*") (re.union (str.to_re "T") (re.union (str.to_re "M") (str.to_re "Z")))) (re.union (str.to_re "F{O") (re.union (str.to_re "F") (re.union (str.to_re "N") (str.to_re "$")))))))) ((_ re.loop 7 630) (re.++ (re.union (str.to_re "4") (re.union (str.to_re "DD") (re.union (str.to_re "t") (str.to_re "MGV")))) (re.++ (re.union (str.to_re "1~r") (re.union (str.to_re "Zu") (re.union (str.to_re "]{") (str.to_re "#pf")))) (re.++ (re.union (str.to_re "x%") (re.union (str.to_re "@") (re.union (str.to_re "\u0022+") (str.to_re "Zh")))) (re.union (str.to_re "b=W") (re.union (str.to_re "s^") (re.union (str.to_re "Xc") (str.to_re ")("))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
