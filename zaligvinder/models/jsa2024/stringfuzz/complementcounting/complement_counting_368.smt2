(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 19 984) (re.++ (re.union (str.to_re "J[9") (re.union (str.to_re "*FV") (re.union (str.to_re "C") (str.to_re ".")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "_") (re.union (str.to_re "f`") (str.to_re "t]8")))) (re.++ (re.union (str.to_re "vaG") (re.union (str.to_re "ECD") (re.union (str.to_re "Q3") (str.to_re "$6~")))) (re.union (str.to_re "^") (re.union (str.to_re "kx") (re.union (str.to_re "*sI") (str.to_re "qY")))))))) (re.++ ((_ re.loop 16 588) (re.++ (re.union (str.to_re "Q") (re.union (str.to_re "_W_") (re.union (str.to_re "^jx") (str.to_re "u?")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "SUy") (re.union (str.to_re "~T$") (str.to_re "[")))) (re.++ (re.union (str.to_re "<.") (re.union (str.to_re "Ul7") (re.union (str.to_re "^{") (str.to_re "Xs")))) (re.union (str.to_re "?T-") (re.union (str.to_re "7") (re.union (str.to_re "DD") (str.to_re "d")))))))) (re.++ ((_ re.loop 0 313) (re.++ (re.union (str.to_re ".7q") (re.union (str.to_re "y") (re.union (str.to_re "M") (str.to_re "wI")))) (re.++ (re.union (str.to_re "\u0022E") (re.union (str.to_re "K/n") (re.union (str.to_re "F") (str.to_re "^")))) (re.++ (re.union (str.to_re "AfP") (re.union (str.to_re "z}") (re.union (str.to_re "w") (str.to_re "S@")))) (re.union (str.to_re "bI") (re.union (str.to_re "--T") (re.union (str.to_re "po") (str.to_re "%")))))))) ((_ re.loop 10 606) (re.++ (re.union (str.to_re "Z") (re.union (str.to_re "/n#") (re.union (str.to_re "i") (str.to_re ")]")))) (re.++ (re.union (str.to_re "c") (re.union (str.to_re ">pK") (re.union (str.to_re "(Q") (str.to_re "\u0022h")))) (re.++ (re.union (str.to_re "`F") (re.union (str.to_re "/") (re.union (str.to_re ">X{") (str.to_re "r")))) (re.union (str.to_re "fn") (re.union (str.to_re "+") (re.union (str.to_re "[L\u0022") (str.to_re "~>")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 9 230) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "P}") (re.union (str.to_re "e$S") (str.to_re "1%i")))) (re.++ (re.union (str.to_re "cP") (re.union (str.to_re "[9:") (re.union (str.to_re "I1") (str.to_re "biX")))) (re.++ (re.union (str.to_re "y") (re.union (str.to_re "?1O") (re.union (str.to_re "ND@") (str.to_re "\u0022%")))) (re.union (str.to_re "#") (re.union (str.to_re "p") (re.union (str.to_re ")2") (str.to_re "Fo")))))))) (re.++ ((_ re.loop 11 376) (re.++ (re.union (str.to_re "p'8") (re.union (str.to_re "6") (re.union (str.to_re "sj") (str.to_re "%V&")))) (re.++ (re.union (str.to_re "hZ/") (re.union (str.to_re "%N") (re.union (str.to_re "7~W") (str.to_re "F")))) (re.++ (re.union (str.to_re "/Dw") (re.union (str.to_re "]2/") (re.union (str.to_re "W") (str.to_re "Z(F")))) (re.union (str.to_re "D%") (re.union (str.to_re "`m]") (re.union (str.to_re "H@") (str.to_re "-V")))))))) (re.++ ((_ re.loop 9 491) (re.++ (re.union (str.to_re "O4") (re.union (str.to_re "$e") (re.union (str.to_re "jd") (str.to_re "$wq")))) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "=") (re.union (str.to_re "C") (str.to_re "2F")))) (re.++ (re.union (str.to_re "?") (re.union (str.to_re "Xz") (re.union (str.to_re "s") (str.to_re "pB")))) (re.union (str.to_re "L^K") (re.union (str.to_re "}qq") (re.union (str.to_re ">") (str.to_re ">")))))))) ((_ re.loop 9 438) (re.++ (re.union (str.to_re "rh]") (re.union (str.to_re "dy^") (re.union (str.to_re "s") (str.to_re "09")))) (re.++ (re.union (str.to_re "^'") (re.union (str.to_re "REV") (re.union (str.to_re "C") (str.to_re "j-k")))) (re.++ (re.union (str.to_re "+O_") (re.union (str.to_re "9") (re.union (str.to_re ";mC") (str.to_re "*9.")))) (re.union (str.to_re "4k") (re.union (str.to_re "nJ") (re.union (str.to_re "Nt") (str.to_re "|p1"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)