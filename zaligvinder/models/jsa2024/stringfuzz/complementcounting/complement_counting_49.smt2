(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 1 674) (re.++ (re.union (str.to_re "*") (re.union (str.to_re "HHB") (re.union (str.to_re "\u0022>") (str.to_re "V'")))) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "^") (re.union (str.to_re "6s}") (str.to_re "D")))) (re.++ (re.union (str.to_re ",") (re.union (str.to_re "$") (re.union (str.to_re "Gs") (str.to_re "9#")))) (re.union (str.to_re "R^") (re.union (str.to_re "|L\\") (re.union (str.to_re "t") (str.to_re "C")))))))) (re.++ ((_ re.loop 20 248) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "uI") (re.union (str.to_re "[") (str.to_re ".")))) (re.++ (re.union (str.to_re "mZY") (re.union (str.to_re "u") (re.union (str.to_re "f|5") (str.to_re "(")))) (re.++ (re.union (str.to_re "bn") (re.union (str.to_re "U") (re.union (str.to_re "H.") (str.to_re "P")))) (re.union (str.to_re "K[q") (re.union (str.to_re "M") (re.union (str.to_re "o") (str.to_re "0")))))))) (re.++ ((_ re.loop 13 598) (re.++ (re.union (str.to_re "c") (re.union (str.to_re "Y") (re.union (str.to_re "v") (str.to_re "o")))) (re.++ (re.union (str.to_re "`") (re.union (str.to_re "^\\u") (re.union (str.to_re "?~l") (str.to_re "nj")))) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "H+") (re.union (str.to_re "YW") (str.to_re "h{")))) (re.union (str.to_re "#/") (re.union (str.to_re "^") (re.union (str.to_re "_[") (str.to_re "y=")))))))) ((_ re.loop 6 189) (re.++ (re.union (str.to_re "t!?") (re.union (str.to_re "+") (re.union (str.to_re "X") (str.to_re "S")))) (re.++ (re.union (str.to_re "\u0022") (re.union (str.to_re "H<w") (re.union (str.to_re "E") (str.to_re "o")))) (re.++ (re.union (str.to_re "4") (re.union (str.to_re "D") (re.union (str.to_re "dv\u0022") (str.to_re "J")))) (re.union (str.to_re "V\\I") (re.union (str.to_re "E") (re.union (str.to_re "p") (str.to_re "W"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 16 249) (re.++ (re.union (str.to_re "`D4") (re.union (str.to_re "bl") (re.union (str.to_re "Y") (str.to_re "e6")))) (re.++ (re.union (str.to_re ",$B") (re.union (str.to_re ">o") (re.union (str.to_re "OX") (str.to_re "HI")))) (re.++ (re.union (str.to_re "Qb!") (re.union (str.to_re "]Us") (re.union (str.to_re "F") (str.to_re "meO")))) (re.union (str.to_re "[") (re.union (str.to_re "-r") (re.union (str.to_re "z}") (str.to_re "k")))))))) (re.++ ((_ re.loop 18 273) (re.++ (re.union (str.to_re "IhA") (re.union (str.to_re "K") (re.union (str.to_re "T") (str.to_re ";bb")))) (re.++ (re.union (str.to_re ";i") (re.union (str.to_re "hS") (re.union (str.to_re "#/") (str.to_re "2k")))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re "[Z") (re.union (str.to_re "G") (str.to_re "*K")))) (re.union (str.to_re "#") (re.union (str.to_re "\\") (re.union (str.to_re "r4#") (str.to_re "t")))))))) (re.++ ((_ re.loop 13 20) (re.++ (re.union (str.to_re "8=") (re.union (str.to_re "X$") (re.union (str.to_re "W)@") (str.to_re "p")))) (re.++ (re.union (str.to_re "WEH") (re.union (str.to_re "M") (re.union (str.to_re "_4") (str.to_re "O5B")))) (re.++ (re.union (str.to_re "t") (re.union (str.to_re ";") (re.union (str.to_re "\u0022HR") (str.to_re "c=,")))) (re.union (str.to_re "Q'") (re.union (str.to_re "rm") (re.union (str.to_re "gzb") (str.to_re "j/")))))))) ((_ re.loop 3 301) (re.++ (re.union (str.to_re "Z") (re.union (str.to_re "l") (re.union (str.to_re "V") (str.to_re "1iF")))) (re.++ (re.union (str.to_re "+%z") (re.union (str.to_re "iE4") (re.union (str.to_re "I") (str.to_re "0")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "O") (re.union (str.to_re "\\o") (str.to_re "ib")))) (re.union (str.to_re "\\xA") (re.union (str.to_re "!7b") (re.union (str.to_re "h") (str.to_re "`wG"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)