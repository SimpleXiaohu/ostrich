(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 3 919) (re.++ (re.union (str.to_re "d`x") (re.union (str.to_re "p") (re.union (str.to_re "pB<") (str.to_re "r")))) (re.++ (re.union (str.to_re "X8") (re.union (str.to_re "}?8") (re.union (str.to_re "wdd") (str.to_re "m")))) (re.++ (re.union (str.to_re "9[f") (re.union (str.to_re "t%*") (re.union (str.to_re "TQ") (str.to_re "Zq")))) (re.union (str.to_re ";") (re.union (str.to_re ">") (re.union (str.to_re "0") (str.to_re "W")))))))) (re.++ ((_ re.loop 16 562) (re.++ (re.union (str.to_re "s") (re.union (str.to_re "Y0") (re.union (str.to_re "y") (str.to_re "G]T")))) (re.++ (re.union (str.to_re "bQ") (re.union (str.to_re "{") (re.union (str.to_re "-") (str.to_re ">")))) (re.++ (re.union (str.to_re "Hi") (re.union (str.to_re "wi&") (re.union (str.to_re "BH") (str.to_re "\\9;")))) (re.union (str.to_re "z<K") (re.union (str.to_re "E") (re.union (str.to_re "R|L") (str.to_re "@>e")))))))) (re.++ ((_ re.loop 7 187) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "o/G") (re.union (str.to_re "ci") (str.to_re "E\u0022V")))) (re.++ (re.union (str.to_re "$y1") (re.union (str.to_re "Q`J") (re.union (str.to_re "_tD") (str.to_re "N")))) (re.++ (re.union (str.to_re "tgO") (re.union (str.to_re "(") (re.union (str.to_re "(\u0022") (str.to_re "#")))) (re.union (str.to_re ".{") (re.union (str.to_re "is") (re.union (str.to_re ";") (str.to_re "p")))))))) ((_ re.loop 20 135) (re.++ (re.union (str.to_re "K") (re.union (str.to_re ":") (re.union (str.to_re "Y") (str.to_re "w")))) (re.++ (re.union (str.to_re "T") (re.union (str.to_re "-P") (re.union (str.to_re "Z@") (str.to_re "C")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "IML") (re.union (str.to_re "f") (str.to_re "d)")))) (re.union (str.to_re "4") (re.union (str.to_re "W15") (re.union (str.to_re "#") (str.to_re "\u0022/")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 3 629) (re.++ (re.union (str.to_re "},") (re.union (str.to_re "%<") (re.union (str.to_re "%P") (str.to_re "d?")))) (re.++ (re.union (str.to_re "Zr") (re.union (str.to_re "k") (re.union (str.to_re "gNK") (str.to_re "jEc")))) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "myv") (re.union (str.to_re "YT&") (str.to_re "R")))) (re.union (str.to_re "10N") (re.union (str.to_re "c") (re.union (str.to_re "Y,") (str.to_re "2}")))))))) (re.++ ((_ re.loop 11 919) (re.++ (re.union (str.to_re "4") (re.union (str.to_re "oP") (re.union (str.to_re "5") (str.to_re "8t@")))) (re.++ (re.union (str.to_re "(2J") (re.union (str.to_re "l4@") (re.union (str.to_re ":") (str.to_re "{")))) (re.++ (re.union (str.to_re "`7{") (re.union (str.to_re "L") (re.union (str.to_re "m@O") (str.to_re "*")))) (re.union (str.to_re "Q*") (re.union (str.to_re "\u0022d") (re.union (str.to_re "m") (str.to_re "*~")))))))) (re.++ ((_ re.loop 1 706) (re.++ (re.union (str.to_re "ZF") (re.union (str.to_re "X^[") (re.union (str.to_re "8") (str.to_re "cs")))) (re.++ (re.union (str.to_re "hk") (re.union (str.to_re "=") (re.union (str.to_re ".") (str.to_re "4v")))) (re.++ (re.union (str.to_re "2~") (re.union (str.to_re "{87") (re.union (str.to_re "@|R") (str.to_re "H%$")))) (re.union (str.to_re "Uj") (re.union (str.to_re "E+") (re.union (str.to_re "+ga") (str.to_re "y!Y")))))))) ((_ re.loop 2 233) (re.++ (re.union (str.to_re "'q_") (re.union (str.to_re "j*") (re.union (str.to_re "Thn") (str.to_re ".H")))) (re.++ (re.union (str.to_re "o") (re.union (str.to_re "?n8") (re.union (str.to_re "\u00227u") (str.to_re "i")))) (re.++ (re.union (str.to_re "(") (re.union (str.to_re "&m") (re.union (str.to_re "?") (str.to_re "#3")))) (re.union (str.to_re "9?") (re.union (str.to_re "FW6") (re.union (str.to_re "^d") (str.to_re "yz'"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)