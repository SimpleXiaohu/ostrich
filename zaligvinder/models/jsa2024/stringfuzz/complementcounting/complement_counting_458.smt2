(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 15 427) (re.++ (re.union (str.to_re "#c") (re.union (str.to_re "89") (re.union (str.to_re "0") (str.to_re "u")))) (re.++ (re.union (str.to_re "c") (re.union (str.to_re "o$") (re.union (str.to_re "#%") (str.to_re "Yg")))) (re.++ (re.union (str.to_re "BP2") (re.union (str.to_re "Og") (re.union (str.to_re "xh") (str.to_re "=C")))) (re.union (str.to_re "Y") (re.union (str.to_re "8") (re.union (str.to_re "{Lo") (str.to_re "l1")))))))) (re.++ ((_ re.loop 8 514) (re.++ (re.union (str.to_re "eId") (re.union (str.to_re "m") (re.union (str.to_re "V") (str.to_re "c$")))) (re.++ (re.union (str.to_re "u") (re.union (str.to_re "(Ep") (re.union (str.to_re "Cc") (str.to_re "P")))) (re.++ (re.union (str.to_re ":") (re.union (str.to_re ".") (re.union (str.to_re "j") (str.to_re "ec'")))) (re.union (str.to_re "Csi") (re.union (str.to_re "xAh") (re.union (str.to_re ")") (str.to_re "Cp")))))))) (re.++ ((_ re.loop 19 111) (re.++ (re.union (str.to_re "SA3") (re.union (str.to_re "d-R") (re.union (str.to_re ",@") (str.to_re "T")))) (re.++ (re.union (str.to_re "A{&") (re.union (str.to_re "lx") (re.union (str.to_re "ZoR") (str.to_re "3;")))) (re.++ (re.union (str.to_re "|\u0022+") (re.union (str.to_re "4") (re.union (str.to_re "g") (str.to_re "!")))) (re.union (str.to_re "HBu") (re.union (str.to_re "d") (re.union (str.to_re "\\") (str.to_re ")")))))))) ((_ re.loop 11 315) (re.++ (re.union (str.to_re "ov") (re.union (str.to_re "J") (re.union (str.to_re "f") (str.to_re "NV")))) (re.++ (re.union (str.to_re ";N") (re.union (str.to_re "j9q") (re.union (str.to_re ":") (str.to_re "#q")))) (re.++ (re.union (str.to_re "Ir,") (re.union (str.to_re "XS") (re.union (str.to_re "e-C") (str.to_re "A")))) (re.union (str.to_re "^") (re.union (str.to_re "sZ") (re.union (str.to_re "u|K") (str.to_re "b")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 4 815) (re.++ (re.union (str.to_re "Td") (re.union (str.to_re "|8") (re.union (str.to_re "4~*") (str.to_re "2")))) (re.++ (re.union (str.to_re "F-<") (re.union (str.to_re "Lt9") (re.union (str.to_re "r") (str.to_re "8")))) (re.++ (re.union (str.to_re "tT3") (re.union (str.to_re "gZK") (re.union (str.to_re "f") (str.to_re "jB")))) (re.union (str.to_re "5") (re.union (str.to_re "2xb") (re.union (str.to_re "yu<") (str.to_re "d+M")))))))) (re.++ ((_ re.loop 13 401) (re.++ (re.union (str.to_re "2G") (re.union (str.to_re "2") (re.union (str.to_re "+*s") (str.to_re "^${")))) (re.++ (re.union (str.to_re ",?q") (re.union (str.to_re ",xs") (re.union (str.to_re "\\+|") (str.to_re "?")))) (re.++ (re.union (str.to_re "W|:") (re.union (str.to_re "\\_L") (re.union (str.to_re "[x1") (str.to_re "Y")))) (re.union (str.to_re ">") (re.union (str.to_re "+[d") (re.union (str.to_re "B") (str.to_re "'\\T")))))))) (re.++ ((_ re.loop 20 395) (re.++ (re.union (str.to_re ">") (re.union (str.to_re "(-") (re.union (str.to_re "+E") (str.to_re "km")))) (re.++ (re.union (str.to_re "z&u") (re.union (str.to_re "M") (re.union (str.to_re "I1") (str.to_re "hlJ")))) (re.++ (re.union (str.to_re "3v") (re.union (str.to_re "eX") (re.union (str.to_re "GP") (str.to_re "L")))) (re.union (str.to_re "8;Z") (re.union (str.to_re "l4i") (re.union (str.to_re "7VM") (str.to_re "+]")))))))) ((_ re.loop 11 950) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "5") (re.union (str.to_re "T") (str.to_re "V")))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "f") (re.union (str.to_re "$") (str.to_re "Z&0")))) (re.++ (re.union (str.to_re "fI") (re.union (str.to_re "m") (re.union (str.to_re "3") (str.to_re "K")))) (re.union (str.to_re "1") (re.union (str.to_re "o") (re.union (str.to_re "B") (str.to_re "K`"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
