(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 5 594) (re.++ (re.union (str.to_re "LI") (re.union (str.to_re "oTv") (re.union (str.to_re "D") (str.to_re "aB")))) (re.++ (re.union (str.to_re "@3") (re.union (str.to_re "I") (re.union (str.to_re "x") (str.to_re "koo")))) (re.++ (re.union (str.to_re ")q") (re.union (str.to_re "p^=") (re.union (str.to_re "2[r") (str.to_re "upY")))) (re.union (str.to_re "hz)") (re.union (str.to_re "3J6") (re.union (str.to_re "/I") (str.to_re "O")))))))) (re.++ ((_ re.loop 17 500) (re.++ (re.union (str.to_re "?o") (re.union (str.to_re ")_+") (re.union (str.to_re "Q") (str.to_re "4M\u0022")))) (re.++ (re.union (str.to_re "g") (re.union (str.to_re "wr") (re.union (str.to_re "1") (str.to_re "ODH")))) (re.++ (re.union (str.to_re "z") (re.union (str.to_re "R") (re.union (str.to_re "tI") (str.to_re "CI")))) (re.union (str.to_re "KF") (re.union (str.to_re "sE!") (re.union (str.to_re "^0H") (str.to_re "G")))))))) (re.++ ((_ re.loop 4 580) (re.++ (re.union (str.to_re "~u-") (re.union (str.to_re "f+") (re.union (str.to_re "L") (str.to_re "g")))) (re.++ (re.union (str.to_re "yR}") (re.union (str.to_re "$") (re.union (str.to_re "%") (str.to_re "#J")))) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "$i") (re.union (str.to_re "2ot") (str.to_re "M")))) (re.union (str.to_re "@Be") (re.union (str.to_re "!R") (re.union (str.to_re "~Z&") (str.to_re "3^h")))))))) ((_ re.loop 6 704) (re.++ (re.union (str.to_re "{E") (re.union (str.to_re "b4(") (re.union (str.to_re "J") (str.to_re "p")))) (re.++ (re.union (str.to_re "Y") (re.union (str.to_re "a7") (re.union (str.to_re "B") (str.to_re "6H5")))) (re.++ (re.union (str.to_re "Llp") (re.union (str.to_re "8>") (re.union (str.to_re "3") (str.to_re "nyt")))) (re.union (str.to_re "j") (re.union (str.to_re "4A$") (re.union (str.to_re "a(") (str.to_re "59")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 16 832) (re.++ (re.union (str.to_re "od|") (re.union (str.to_re "`") (re.union (str.to_re "NpJ") (str.to_re "P")))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "\u0022%") (re.union (str.to_re "Z") (str.to_re ",")))) (re.++ (re.union (str.to_re "?m") (re.union (str.to_re "+,e") (re.union (str.to_re "|") (str.to_re "3")))) (re.union (str.to_re "}l") (re.union (str.to_re "_") (re.union (str.to_re "W<]") (str.to_re "O}")))))))) (re.++ ((_ re.loop 17 484) (re.++ (re.union (str.to_re "DO") (re.union (str.to_re "m") (re.union (str.to_re "NHh") (str.to_re "R^")))) (re.++ (re.union (str.to_re ",;q") (re.union (str.to_re "y") (re.union (str.to_re "3$(") (str.to_re "T")))) (re.++ (re.union (str.to_re "Rri") (re.union (str.to_re "|B") (re.union (str.to_re "!") (str.to_re "10")))) (re.union (str.to_re "#") (re.union (str.to_re "<7H") (re.union (str.to_re "%Cb") (str.to_re "p")))))))) (re.++ ((_ re.loop 12 373) (re.++ (re.union (str.to_re ")}") (re.union (str.to_re "b") (re.union (str.to_re "F$") (str.to_re "2Jd")))) (re.++ (re.union (str.to_re "i") (re.union (str.to_re ":") (re.union (str.to_re "J") (str.to_re "WC")))) (re.++ (re.union (str.to_re "t,(") (re.union (str.to_re "kj") (re.union (str.to_re "/") (str.to_re "!g")))) (re.union (str.to_re "LJ") (re.union (str.to_re "vR") (re.union (str.to_re "\u0022{") (str.to_re "KCv")))))))) ((_ re.loop 11 223) (re.++ (re.union (str.to_re "c|") (re.union (str.to_re "*F") (re.union (str.to_re "Qh\\") (str.to_re "pCS")))) (re.++ (re.union (str.to_re "``@") (re.union (str.to_re "O") (re.union (str.to_re "l") (str.to_re "h")))) (re.++ (re.union (str.to_re "tG") (re.union (str.to_re "W") (re.union (str.to_re "[!") (str.to_re "M")))) (re.union (str.to_re "G") (re.union (str.to_re "nr") (re.union (str.to_re "X") (str.to_re "o*B"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
