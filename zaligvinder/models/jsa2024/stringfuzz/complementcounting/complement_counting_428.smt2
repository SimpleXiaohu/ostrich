(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 3 615) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "TJ,") (re.union (str.to_re "RK") (str.to_re ".j")))) (re.++ (re.union (str.to_re "@}p") (re.union (str.to_re "E") (re.union (str.to_re "bT") (str.to_re "jhh")))) (re.++ (re.union (str.to_re "`>") (re.union (str.to_re ">j") (re.union (str.to_re "q") (str.to_re "/")))) (re.union (str.to_re "Y_D") (re.union (str.to_re ">e") (re.union (str.to_re "]`") (str.to_re "2^")))))))) (re.++ ((_ re.loop 10 170) (re.++ (re.union (str.to_re "\\") (re.union (str.to_re "\u0022?R") (re.union (str.to_re "^") (str.to_re "M?")))) (re.++ (re.union (str.to_re "kO=") (re.union (str.to_re "oE") (re.union (str.to_re "h(") (str.to_re "GR")))) (re.++ (re.union (str.to_re "m5") (re.union (str.to_re "8Bj") (re.union (str.to_re "A") (str.to_re "x")))) (re.union (str.to_re "%!") (re.union (str.to_re "?") (re.union (str.to_re "P") (str.to_re "u")))))))) (re.++ ((_ re.loop 15 142) (re.++ (re.union (str.to_re ";+") (re.union (str.to_re "{<\\") (re.union (str.to_re "jt<") (str.to_re "f")))) (re.++ (re.union (str.to_re "lB") (re.union (str.to_re "12") (re.union (str.to_re ")k") (str.to_re "L")))) (re.++ (re.union (str.to_re "M") (re.union (str.to_re "S'") (re.union (str.to_re "~+") (str.to_re "CAs")))) (re.union (str.to_re "t/|") (re.union (str.to_re "r7U") (re.union (str.to_re "k]#") (str.to_re "9Q*")))))))) ((_ re.loop 2 444) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "0'") (re.union (str.to_re "=1") (str.to_re "w+z")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "#[") (re.union (str.to_re "3") (str.to_re "m")))) (re.++ (re.union (str.to_re "J[)") (re.union (str.to_re "v") (re.union (str.to_re "xA") (str.to_re "md")))) (re.union (str.to_re "HOx") (re.union (str.to_re "x") (re.union (str.to_re "K") (str.to_re "=%o")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 6 575) (re.++ (re.union (str.to_re "5") (re.union (str.to_re "O") (re.union (str.to_re "B&") (str.to_re "hT")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re "6!") (re.union (str.to_re "J") (str.to_re "yy")))) (re.++ (re.union (str.to_re ";") (re.union (str.to_re "e#") (re.union (str.to_re "t@R") (str.to_re "4")))) (re.union (str.to_re "`JN") (re.union (str.to_re "d") (re.union (str.to_re "Fl^") (str.to_re "g")))))))) (re.++ ((_ re.loop 3 637) (re.++ (re.union (str.to_re "b.") (re.union (str.to_re "l") (re.union (str.to_re ">") (str.to_re "'=")))) (re.++ (re.union (str.to_re "?C") (re.union (str.to_re "b}m") (re.union (str.to_re "4[u") (str.to_re "W~")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "se") (re.union (str.to_re "r") (str.to_re "2")))) (re.union (str.to_re "y") (re.union (str.to_re "`t]") (re.union (str.to_re "<<C") (str.to_re "7")))))))) (re.++ ((_ re.loop 12 637) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "<f") (re.union (str.to_re "r") (str.to_re "3$")))) (re.++ (re.union (str.to_re "W") (re.union (str.to_re "L") (re.union (str.to_re "D<X") (str.to_re "LZ")))) (re.++ (re.union (str.to_re "B/-") (re.union (str.to_re "n") (re.union (str.to_re "~t2") (str.to_re "HjR")))) (re.union (str.to_re "E") (re.union (str.to_re "2%q") (re.union (str.to_re "Pw0") (str.to_re "Q")))))))) ((_ re.loop 4 182) (re.++ (re.union (str.to_re "ef") (re.union (str.to_re "#wL") (re.union (str.to_re "q2`") (str.to_re "|")))) (re.++ (re.union (str.to_re "<mR") (re.union (str.to_re ",b") (re.union (str.to_re "ep") (str.to_re "{")))) (re.++ (re.union (str.to_re "nfD") (re.union (str.to_re "j0w") (re.union (str.to_re "'&E") (str.to_re "S'")))) (re.union (str.to_re ";pO") (re.union (str.to_re "N=y") (re.union (str.to_re "Y") (str.to_re "Mn"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
