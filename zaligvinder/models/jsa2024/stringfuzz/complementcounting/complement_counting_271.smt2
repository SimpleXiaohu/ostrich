(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 17 135) (re.++ (re.union (str.to_re "H=") (re.union (str.to_re "xc") (re.union (str.to_re "-") (str.to_re "Ry")))) (re.++ (re.union (str.to_re "^N") (re.union (str.to_re "!V") (re.union (str.to_re ",") (str.to_re "!")))) (re.++ (re.union (str.to_re "G") (re.union (str.to_re "0") (re.union (str.to_re "gSB") (str.to_re "Y")))) (re.union (str.to_re ",R") (re.union (str.to_re "nhc") (re.union (str.to_re "b>?") (str.to_re "R/a")))))))) (re.++ ((_ re.loop 15 702) (re.++ (re.union (str.to_re "s)S") (re.union (str.to_re "CAB") (re.union (str.to_re "L5]") (str.to_re "Pu")))) (re.++ (re.union (str.to_re "O5+") (re.union (str.to_re "<c") (re.union (str.to_re "i\u0022h") (str.to_re "9")))) (re.++ (re.union (str.to_re "<<|") (re.union (str.to_re ";") (re.union (str.to_re "[D") (str.to_re "Fo.")))) (re.union (str.to_re "~i") (re.union (str.to_re "*{") (re.union (str.to_re "l\u0022M") (str.to_re "N")))))))) (re.++ ((_ re.loop 2 769) (re.++ (re.union (str.to_re "(") (re.union (str.to_re "M") (re.union (str.to_re "Wq") (str.to_re "fR")))) (re.++ (re.union (str.to_re "'{") (re.union (str.to_re "]") (re.union (str.to_re ">_r") (str.to_re "w1.")))) (re.++ (re.union (str.to_re "M\u0022Y") (re.union (str.to_re "h~2") (re.union (str.to_re "yGm") (str.to_re "go7")))) (re.union (str.to_re "g") (re.union (str.to_re "A") (re.union (str.to_re "F7") (str.to_re "8")))))))) ((_ re.loop 4 581) (re.++ (re.union (str.to_re "|@") (re.union (str.to_re "x7") (re.union (str.to_re "I;Y") (str.to_re "n")))) (re.++ (re.union (str.to_re "+Xk") (re.union (str.to_re "`") (re.union (str.to_re "0`A") (str.to_re "}0)")))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "[B") (re.union (str.to_re "8;") (str.to_re "A")))) (re.union (str.to_re "[") (re.union (str.to_re "F") (re.union (str.to_re "}") (str.to_re "\u0022[")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 0 976) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "Z") (re.union (str.to_re "`U!") (str.to_re "O")))) (re.++ (re.union (str.to_re "`") (re.union (str.to_re "}") (re.union (str.to_re "M_") (str.to_re "s")))) (re.++ (re.union (str.to_re "0b") (re.union (str.to_re "0") (re.union (str.to_re "#6") (str.to_re "+,v")))) (re.union (str.to_re "so") (re.union (str.to_re "xn-") (re.union (str.to_re "^9E") (str.to_re "p")))))))) (re.++ ((_ re.loop 9 610) (re.++ (re.union (str.to_re "/l'") (re.union (str.to_re "N") (re.union (str.to_re "61") (str.to_re "m)/")))) (re.++ (re.union (str.to_re "~") (re.union (str.to_re "l\u0022S") (re.union (str.to_re "RAS") (str.to_re "i|")))) (re.++ (re.union (str.to_re ":kE") (re.union (str.to_re ".") (re.union (str.to_re "m") (str.to_re "T")))) (re.union (str.to_re "=}") (re.union (str.to_re "bS") (re.union (str.to_re "7%") (str.to_re "D4")))))))) (re.++ ((_ re.loop 16 875) (re.++ (re.union (str.to_re "*") (re.union (str.to_re "\\") (re.union (str.to_re "g") (str.to_re "gs")))) (re.++ (re.union (str.to_re "}&") (re.union (str.to_re "PY") (re.union (str.to_re "Qk") (str.to_re "+GX")))) (re.++ (re.union (str.to_re "D") (re.union (str.to_re "l") (re.union (str.to_re "'O") (str.to_re "_N")))) (re.union (str.to_re "c(") (re.union (str.to_re "@h") (re.union (str.to_re "t") (str.to_re ":")))))))) ((_ re.loop 13 152) (re.++ (re.union (str.to_re "g]") (re.union (str.to_re "^") (re.union (str.to_re "?") (str.to_re "bY")))) (re.++ (re.union (str.to_re "[") (re.union (str.to_re "Bj") (re.union (str.to_re "UH]") (str.to_re "?^")))) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "u") (re.union (str.to_re "w") (str.to_re "!T")))) (re.union (str.to_re "=") (re.union (str.to_re "}") (re.union (str.to_re "G") (str.to_re "_"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
