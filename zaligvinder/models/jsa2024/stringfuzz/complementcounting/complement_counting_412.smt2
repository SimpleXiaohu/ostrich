(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 3 199) (re.++ (re.union (str.to_re "Z/") (re.union (str.to_re "'_") (re.union (str.to_re "37n") (str.to_re "B")))) (re.++ (re.union (str.to_re "0HF") (re.union (str.to_re "YG") (re.union (str.to_re "?/") (str.to_re "<+j")))) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "iz") (re.union (str.to_re "Ig6") (str.to_re "J$")))) (re.union (str.to_re "k5D") (re.union (str.to_re "8") (re.union (str.to_re "NL") (str.to_re "?G")))))))) (re.++ ((_ re.loop 15 913) (re.++ (re.union (str.to_re "q}") (re.union (str.to_re "_") (re.union (str.to_re ":5") (str.to_re "m,t")))) (re.++ (re.union (str.to_re "81u") (re.union (str.to_re "$") (re.union (str.to_re "$}O") (str.to_re "c:\\")))) (re.++ (re.union (str.to_re "@f\\") (re.union (str.to_re "K") (re.union (str.to_re "({]") (str.to_re "2")))) (re.union (str.to_re "Er") (re.union (str.to_re "@") (re.union (str.to_re ",e,") (str.to_re "L][")))))))) (re.++ ((_ re.loop 13 766) (re.++ (re.union (str.to_re "bK*") (re.union (str.to_re "d") (re.union (str.to_re "*X") (str.to_re "qg")))) (re.++ (re.union (str.to_re "Z2") (re.union (str.to_re "lX") (re.union (str.to_re "&t") (str.to_re "E(o")))) (re.++ (re.union (str.to_re "HP:") (re.union (str.to_re "\\\\") (re.union (str.to_re "}") (str.to_re ";")))) (re.union (str.to_re "{/") (re.union (str.to_re "SJ") (re.union (str.to_re "$") (str.to_re "V.")))))))) ((_ re.loop 10 469) (re.++ (re.union (str.to_re "b") (re.union (str.to_re ",") (re.union (str.to_re "o&'") (str.to_re "k=`")))) (re.++ (re.union (str.to_re "`") (re.union (str.to_re "iZ") (re.union (str.to_re "C9") (str.to_re "F")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re "%") (re.union (str.to_re "JT=") (str.to_re "VY")))) (re.union (str.to_re ",") (re.union (str.to_re "i'") (re.union (str.to_re ".r") (str.to_re ":")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 4 764) (re.++ (re.union (str.to_re "Km") (re.union (str.to_re "Hqu") (re.union (str.to_re "1") (str.to_re "{")))) (re.++ (re.union (str.to_re "S") (re.union (str.to_re "e|") (re.union (str.to_re "%_") (str.to_re "o")))) (re.++ (re.union (str.to_re "|") (re.union (str.to_re ")uS") (re.union (str.to_re "S") (str.to_re "v{7")))) (re.union (str.to_re "]I") (re.union (str.to_re "x^") (re.union (str.to_re "!&") (str.to_re "9")))))))) (re.++ ((_ re.loop 9 697) (re.++ (re.union (str.to_re "u") (re.union (str.to_re "D51") (re.union (str.to_re "i[") (str.to_re "Z+\\")))) (re.++ (re.union (str.to_re "~uf") (re.union (str.to_re "vA;") (re.union (str.to_re "^6") (str.to_re "<")))) (re.++ (re.union (str.to_re "\u00224") (re.union (str.to_re "aT") (re.union (str.to_re "xt") (str.to_re "\u00220^")))) (re.union (str.to_re "X") (re.union (str.to_re "tXP") (re.union (str.to_re "ke") (str.to_re "Hn")))))))) (re.++ ((_ re.loop 13 314) (re.++ (re.union (str.to_re "w'") (re.union (str.to_re "&") (re.union (str.to_re "H") (str.to_re "7AY")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re "Y]") (re.union (str.to_re "O#{") (str.to_re ")\\p")))) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "%Es") (re.union (str.to_re ")") (str.to_re "@O")))) (re.union (str.to_re "g") (re.union (str.to_re "2'") (re.union (str.to_re "PaO") (str.to_re "a")))))))) ((_ re.loop 6 986) (re.++ (re.union (str.to_re "YvJ") (re.union (str.to_re "A") (re.union (str.to_re "W") (str.to_re "ZNF")))) (re.++ (re.union (str.to_re "'") (re.union (str.to_re "B9") (re.union (str.to_re "j") (str.to_re "VPG")))) (re.++ (re.union (str.to_re "n") (re.union (str.to_re "Y6h") (re.union (str.to_re "[") (str.to_re "5S")))) (re.union (str.to_re "d[1") (re.union (str.to_re "$&") (re.union (str.to_re "C") (str.to_re "AC"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)