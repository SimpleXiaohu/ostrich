(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 6 940) (re.++ (re.union (str.to_re "`l&") (re.union (str.to_re "|:") (re.union (str.to_re "]") (str.to_re "ba<")))) (re.++ (re.union (str.to_re "s") (re.union (str.to_re "5") (re.union (str.to_re "6") (str.to_re "U")))) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "Zv") (re.union (str.to_re "8A") (str.to_re "jT[")))) (re.union (str.to_re "s>Z") (re.union (str.to_re "%et") (re.union (str.to_re "v$") (str.to_re "m\u0022v")))))))) (re.++ ((_ re.loop 5 424) (re.++ (re.union (str.to_re "nnx") (re.union (str.to_re "i") (re.union (str.to_re "V8C") (str.to_re "b")))) (re.++ (re.union (str.to_re "F.=") (re.union (str.to_re "c") (re.union (str.to_re "vn") (str.to_re "U")))) (re.++ (re.union (str.to_re "1") (re.union (str.to_re "ixE") (re.union (str.to_re "b") (str.to_re "9kR")))) (re.union (str.to_re "N") (re.union (str.to_re "'*") (re.union (str.to_re "4") (str.to_re "1")))))))) (re.++ ((_ re.loop 0 170) (re.++ (re.union (str.to_re "\u0022'_") (re.union (str.to_re "FWR") (re.union (str.to_re "[@x") (str.to_re "<_X")))) (re.++ (re.union (str.to_re "hw") (re.union (str.to_re "{") (re.union (str.to_re "_") (str.to_re "X")))) (re.++ (re.union (str.to_re "`") (re.union (str.to_re "E.*") (re.union (str.to_re "p") (str.to_re "7")))) (re.union (str.to_re "G") (re.union (str.to_re "tOP") (re.union (str.to_re "t`o") (str.to_re "Lx:")))))))) ((_ re.loop 19 894) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "``K") (re.union (str.to_re "Q") (str.to_re "k[y")))) (re.++ (re.union (str.to_re "wQ") (re.union (str.to_re "S") (re.union (str.to_re "^") (str.to_re "<HR")))) (re.++ (re.union (str.to_re "D&") (re.union (str.to_re "=G") (re.union (str.to_re "@") (str.to_re "o")))) (re.union (str.to_re "2<") (re.union (str.to_re "si") (re.union (str.to_re "_Dp") (str.to_re "64"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 13 506) (re.++ (re.union (str.to_re "[") (re.union (str.to_re "+O") (re.union (str.to_re "!") (str.to_re "{}")))) (re.++ (re.union (str.to_re "Eck") (re.union (str.to_re "-}") (re.union (str.to_re "7`2") (str.to_re "(G")))) (re.++ (re.union (str.to_re "L-") (re.union (str.to_re "Z~2") (re.union (str.to_re "W") (str.to_re "MD")))) (re.union (str.to_re ".pY") (re.union (str.to_re "v") (re.union (str.to_re "`t") (str.to_re "K")))))))) (re.++ ((_ re.loop 2 344) (re.++ (re.union (str.to_re "JP") (re.union (str.to_re "WH") (re.union (str.to_re "r-") (str.to_re ".")))) (re.++ (re.union (str.to_re "P6.") (re.union (str.to_re "ImS") (re.union (str.to_re "a") (str.to_re "|")))) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "n") (re.union (str.to_re ".gT") (str.to_re "^v$")))) (re.union (str.to_re "b2") (re.union (str.to_re "47@") (re.union (str.to_re "nv") (str.to_re "coS")))))))) (re.++ ((_ re.loop 8 88) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "l") (re.union (str.to_re "+n") (str.to_re "_,")))) (re.++ (re.union (str.to_re "/E?") (re.union (str.to_re "gb") (re.union (str.to_re "\u0022J_") (str.to_re "10n")))) (re.++ (re.union (str.to_re "9M$") (re.union (str.to_re "%") (re.union (str.to_re "<") (str.to_re "L%")))) (re.union (str.to_re "%Xo") (re.union (str.to_re "]$g") (re.union (str.to_re "\u0022b+") (str.to_re "2x-")))))))) ((_ re.loop 3 102) (re.++ (re.union (str.to_re "70") (re.union (str.to_re "(#") (re.union (str.to_re "E8_") (str.to_re "9")))) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "s+") (re.union (str.to_re "~F") (str.to_re "i~")))) (re.++ (re.union (str.to_re "Su") (re.union (str.to_re "K") (re.union (str.to_re "?") (str.to_re "F;f")))) (re.union (str.to_re "5") (re.union (str.to_re "*NH") (re.union (str.to_re "`I2") (str.to_re "v2["))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
