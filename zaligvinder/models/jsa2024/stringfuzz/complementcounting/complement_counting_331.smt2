(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 57) (re.++ (re.union (str.to_re "lQ") (re.union (str.to_re "uE") (re.union (str.to_re "?") (str.to_re "<c/")))) (re.++ (re.union (str.to_re "t") (re.union (str.to_re "DX") (re.union (str.to_re "m") (str.to_re "L")))) (re.++ (re.union (str.to_re "-!r") (re.union (str.to_re ";9O") (re.union (str.to_re "OD=") (str.to_re "vw-")))) (re.union (str.to_re "m}<") (re.union (str.to_re ".p") (re.union (str.to_re ":o") (str.to_re "|")))))))) (re.++ ((_ re.loop 8 343) (re.++ (re.union (str.to_re "aH") (re.union (str.to_re "B") (re.union (str.to_re "91J") (str.to_re "75")))) (re.++ (re.union (str.to_re "$2M") (re.union (str.to_re "#wG") (re.union (str.to_re ".C0") (str.to_re "-}m")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re "hOo") (re.union (str.to_re "PKR") (str.to_re "8!]")))) (re.union (str.to_re "S^7") (re.union (str.to_re "e") (re.union (str.to_re "$") (str.to_re "Rw")))))))) (re.++ ((_ re.loop 6 889) (re.++ (re.union (str.to_re "S1") (re.union (str.to_re "*)") (re.union (str.to_re "vo") (str.to_re "d(|")))) (re.++ (re.union (str.to_re "M") (re.union (str.to_re "j") (re.union (str.to_re "HG.") (str.to_re "%4")))) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "2j") (re.union (str.to_re "E#^") (str.to_re "k")))) (re.union (str.to_re "&.3") (re.union (str.to_re "El3") (re.union (str.to_re "6") (str.to_re "i")))))))) ((_ re.loop 0 522) (re.++ (re.union (str.to_re "X") (re.union (str.to_re "(_M") (re.union (str.to_re "`ik") (str.to_re "6")))) (re.++ (re.union (str.to_re "]#") (re.union (str.to_re "m") (re.union (str.to_re "j(]") (str.to_re "n")))) (re.++ (re.union (str.to_re "l") (re.union (str.to_re "#") (re.union (str.to_re "8F;") (str.to_re "Zl#")))) (re.union (str.to_re "'j") (re.union (str.to_re "W") (re.union (str.to_re "{b\\") (str.to_re "D]#")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 15 577) (re.++ (re.union (str.to_re "')J") (re.union (str.to_re "(") (re.union (str.to_re "$^") (str.to_re "eD")))) (re.++ (re.union (str.to_re "o$<") (re.union (str.to_re "6jK") (re.union (str.to_re "ru>") (str.to_re "Res")))) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "`\u0022") (re.union (str.to_re "9") (str.to_re "fgA")))) (re.union (str.to_re "]") (re.union (str.to_re "!~C") (re.union (str.to_re "{*{") (str.to_re "T=")))))))) (re.++ ((_ re.loop 15 581) (re.++ (re.union (str.to_re "Tz") (re.union (str.to_re "lL") (re.union (str.to_re "+") (str.to_re "1NK")))) (re.++ (re.union (str.to_re "h") (re.union (str.to_re "UO@") (re.union (str.to_re "j") (str.to_re "b'V")))) (re.++ (re.union (str.to_re "!") (re.union (str.to_re "Oq^") (re.union (str.to_re "&g") (str.to_re "NLc")))) (re.union (str.to_re "I`") (re.union (str.to_re "v5") (re.union (str.to_re "y") (str.to_re "a")))))))) (re.++ ((_ re.loop 19 841) (re.++ (re.union (str.to_re "h3") (re.union (str.to_re "D4\u0022") (re.union (str.to_re "Dd") (str.to_re ".$")))) (re.++ (re.union (str.to_re "$@!") (re.union (str.to_re ";") (re.union (str.to_re "K") (str.to_re "5")))) (re.++ (re.union (str.to_re "p$") (re.union (str.to_re "FW:") (re.union (str.to_re "F?") (str.to_re "S*!")))) (re.union (str.to_re ">") (re.union (str.to_re "/Y") (re.union (str.to_re "5") (str.to_re "p")))))))) ((_ re.loop 15 444) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "#") (re.union (str.to_re "u.:") (str.to_re "a")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "GF") (re.union (str.to_re "3") (str.to_re "(45")))) (re.++ (re.union (str.to_re "&h") (re.union (str.to_re "2H") (re.union (str.to_re "s.") (str.to_re "R")))) (re.union (str.to_re "PQy") (re.union (str.to_re "3") (re.union (str.to_re "g") (str.to_re "P'"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)