(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 16 153) (re.++ (re.union (str.to_re "+%b") (re.union (str.to_re "O") (re.union (str.to_re "o") (str.to_re "87")))) (re.++ (re.union (str.to_re "2") (re.union (str.to_re "a") (re.union (str.to_re "?=") (str.to_re "Ut")))) (re.++ (re.union (str.to_re "Vh") (re.union (str.to_re "_A") (re.union (str.to_re "ZV") (str.to_re "~:o")))) (re.union (str.to_re "\\Wv") (re.union (str.to_re "`") (re.union (str.to_re "6") (str.to_re "d")))))))) (re.++ ((_ re.loop 1 925) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "*!r") (re.union (str.to_re "6") (str.to_re "I")))) (re.++ (re.union (str.to_re "U)") (re.union (str.to_re "K") (re.union (str.to_re "g0J") (str.to_re ",/@")))) (re.++ (re.union (str.to_re "0X") (re.union (str.to_re "c") (re.union (str.to_re "3") (str.to_re "7")))) (re.union (str.to_re "N") (re.union (str.to_re "EkX") (re.union (str.to_re "C") (str.to_re "u^")))))))) (re.++ ((_ re.loop 6 461) (re.++ (re.union (str.to_re "B-g") (re.union (str.to_re "+Y_") (re.union (str.to_re "&X") (str.to_re ":")))) (re.++ (re.union (str.to_re "l") (re.union (str.to_re "el") (re.union (str.to_re "k\u0022v") (str.to_re "B")))) (re.++ (re.union (str.to_re "]a") (re.union (str.to_re "l+") (re.union (str.to_re "EL") (str.to_re "c")))) (re.union (str.to_re "fL+") (re.union (str.to_re "*v") (re.union (str.to_re "#") (str.to_re "t")))))))) ((_ re.loop 8 335) (re.++ (re.union (str.to_re "W") (re.union (str.to_re "-ok") (re.union (str.to_re "k&") (str.to_re "[\u0022")))) (re.++ (re.union (str.to_re "H") (re.union (str.to_re "\u0022)") (re.union (str.to_re "'P&") (str.to_re "fov")))) (re.++ (re.union (str.to_re "iT") (re.union (str.to_re ",pu") (re.union (str.to_re "o") (str.to_re "&")))) (re.union (str.to_re "Su7") (re.union (str.to_re "g") (re.union (str.to_re "$") (str.to_re "4?`"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 11 80) (re.++ (re.union (str.to_re "j-=") (re.union (str.to_re "1") (re.union (str.to_re "@-") (str.to_re "$S")))) (re.++ (re.union (str.to_re "S") (re.union (str.to_re "_l_") (re.union (str.to_re "\u0022D") (str.to_re "L")))) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "8") (re.union (str.to_re "#x") (str.to_re "$x:")))) (re.union (str.to_re "]@#") (re.union (str.to_re "v4") (re.union (str.to_re "=") (str.to_re "IA")))))))) (re.++ ((_ re.loop 8 490) (re.++ (re.union (str.to_re "jBA") (re.union (str.to_re "w") (re.union (str.to_re "w9/") (str.to_re "nbq")))) (re.++ (re.union (str.to_re "?,;") (re.union (str.to_re "/") (re.union (str.to_re "1C") (str.to_re "n\\C")))) (re.++ (re.union (str.to_re "M") (re.union (str.to_re "H*") (re.union (str.to_re "egK") (str.to_re "i[")))) (re.union (str.to_re ")") (re.union (str.to_re "T5y") (re.union (str.to_re "mVW") (str.to_re "n8W")))))))) (re.++ ((_ re.loop 0 570) (re.++ (re.union (str.to_re "[^O") (re.union (str.to_re "\\B$") (re.union (str.to_re ";^P") (str.to_re "i}F")))) (re.++ (re.union (str.to_re "%S~") (re.union (str.to_re "Uaa") (re.union (str.to_re "{-b") (str.to_re "g!")))) (re.++ (re.union (str.to_re "fs") (re.union (str.to_re "u") (re.union (str.to_re ">C!") (str.to_re "h4")))) (re.union (str.to_re "6.") (re.union (str.to_re "/L") (re.union (str.to_re "W") (str.to_re "e?x")))))))) ((_ re.loop 6 693) (re.++ (re.union (str.to_re "a,") (re.union (str.to_re "5") (re.union (str.to_re "E") (str.to_re "p3")))) (re.++ (re.union (str.to_re "2v") (re.union (str.to_re "r)G") (re.union (str.to_re "H:U") (str.to_re "C\\D")))) (re.++ (re.union (str.to_re "E]") (re.union (str.to_re "`W") (re.union (str.to_re "_") (str.to_re "Op")))) (re.union (str.to_re "Z?") (re.union (str.to_re "2&t") (re.union (str.to_re "OC") (str.to_re "'"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
