(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 3 435) (re.++ (re.union (str.to_re "D") (re.union (str.to_re "~)") (re.union (str.to_re "/") (str.to_re "Y")))) (re.++ (re.union (str.to_re "Ck") (re.union (str.to_re "Bp") (re.union (str.to_re "!") (str.to_re "F")))) (re.++ (re.union (str.to_re "6]") (re.union (str.to_re "@I6") (re.union (str.to_re "f") (str.to_re "}H1")))) (re.union (str.to_re "vp") (re.union (str.to_re "R") (re.union (str.to_re "j>") (str.to_re "}$")))))))) (re.++ ((_ re.loop 12 981) (re.++ (re.union (str.to_re ";") (re.union (str.to_re "Cl") (re.union (str.to_re "7i8") (str.to_re "'4p")))) (re.++ (re.union (str.to_re "o|") (re.union (str.to_re "A") (re.union (str.to_re "Rv") (str.to_re "\\*")))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re "k") (re.union (str.to_re "d2/") (str.to_re "![")))) (re.union (str.to_re "Q") (re.union (str.to_re "2") (re.union (str.to_re "Myt") (str.to_re ":")))))))) (re.++ ((_ re.loop 11 880) (re.++ (re.union (str.to_re "0P)") (re.union (str.to_re "H1u") (re.union (str.to_re ">Fb") (str.to_re "q")))) (re.++ (re.union (str.to_re "P^Q") (re.union (str.to_re "v") (re.union (str.to_re "c") (str.to_re "to")))) (re.++ (re.union (str.to_re "},-") (re.union (str.to_re "U*") (re.union (str.to_re ")") (str.to_re "e")))) (re.union (str.to_re "'") (re.union (str.to_re "G") (re.union (str.to_re ",") (str.to_re "=m")))))))) ((_ re.loop 20 907) (re.++ (re.union (str.to_re "/M") (re.union (str.to_re "g2") (re.union (str.to_re "pS") (str.to_re "]")))) (re.++ (re.union (str.to_re "FUz") (re.union (str.to_re "Wu}") (re.union (str.to_re "QI") (str.to_re "+")))) (re.++ (re.union (str.to_re "zY") (re.union (str.to_re ")0B") (re.union (str.to_re "P_c") (str.to_re "C?&")))) (re.union (str.to_re "Zr") (re.union (str.to_re "a") (re.union (str.to_re "!") (str.to_re "(6")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 18 35) (re.++ (re.union (str.to_re "#") (re.union (str.to_re ".") (re.union (str.to_re "&JM") (str.to_re "DHZ")))) (re.++ (re.union (str.to_re "o") (re.union (str.to_re "GXs") (re.union (str.to_re "v") (str.to_re "+~$")))) (re.++ (re.union (str.to_re "v70") (re.union (str.to_re "r") (re.union (str.to_re "+P1") (str.to_re "{o")))) (re.union (str.to_re "W[") (re.union (str.to_re "h") (re.union (str.to_re "$") (str.to_re "}")))))))) (re.++ ((_ re.loop 0 232) (re.++ (re.union (str.to_re "~[") (re.union (str.to_re "IVr") (re.union (str.to_re "1M+") (str.to_re "Z$b")))) (re.++ (re.union (str.to_re "l1#") (re.union (str.to_re "'<") (re.union (str.to_re "vYg") (str.to_re "HNN")))) (re.++ (re.union (str.to_re "f") (re.union (str.to_re "Qd3") (re.union (str.to_re "Sf") (str.to_re "W")))) (re.union (str.to_re "r2") (re.union (str.to_re "ZBE") (re.union (str.to_re "?7") (str.to_re "v")))))))) (re.++ ((_ re.loop 4 258) (re.++ (re.union (str.to_re "Cw") (re.union (str.to_re "2/[") (re.union (str.to_re "S") (str.to_re "+")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "pK5") (re.union (str.to_re "z") (str.to_re ".<")))) (re.++ (re.union (str.to_re "c;") (re.union (str.to_re "t5") (re.union (str.to_re "F&%") (str.to_re "0")))) (re.union (str.to_re "MXb") (re.union (str.to_re "O") (re.union (str.to_re "$z'") (str.to_re "a9C")))))))) ((_ re.loop 20 163) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "If") (re.union (str.to_re "U") (str.to_re ".")))) (re.++ (re.union (str.to_re "ZVm") (re.union (str.to_re "vsd") (re.union (str.to_re "FR") (str.to_re "U")))) (re.++ (re.union (str.to_re "B") (re.union (str.to_re "rw") (re.union (str.to_re "k") (str.to_re "~")))) (re.union (str.to_re "OlF") (re.union (str.to_re "R&") (re.union (str.to_re "<") (str.to_re "`v,"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)