(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 5 853) (re.++ (re.union (str.to_re "R") (re.union (str.to_re "7") (re.union (str.to_re "(6_") (str.to_re "P*.")))) (re.++ (re.union (str.to_re "=a^") (re.union (str.to_re "\\") (re.union (str.to_re "<p") (str.to_re "UL")))) (re.++ (re.union (str.to_re "vM") (re.union (str.to_re "98b") (re.union (str.to_re "v") (str.to_re "\u0022")))) (re.union (str.to_re "ML") (re.union (str.to_re "]Y") (re.union (str.to_re "#.h") (str.to_re "@")))))))) (re.++ ((_ re.loop 2 980) (re.++ (re.union (str.to_re "|") (re.union (str.to_re "S8L") (re.union (str.to_re "O@") (str.to_re "U")))) (re.++ (re.union (str.to_re ":Zs") (re.union (str.to_re "~") (re.union (str.to_re "V") (str.to_re "A")))) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "*") (re.union (str.to_re "e7%") (str.to_re "w")))) (re.union (str.to_re "!") (re.union (str.to_re "3~T") (re.union (str.to_re "P") (str.to_re "@-")))))))) (re.++ ((_ re.loop 1 20) (re.++ (re.union (str.to_re "Va!") (re.union (str.to_re "uHP") (re.union (str.to_re "f") (str.to_re "#")))) (re.++ (re.union (str.to_re "N") (re.union (str.to_re "e") (re.union (str.to_re "C5;") (str.to_re ">")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re "q") (re.union (str.to_re "|") (str.to_re "%&")))) (re.union (str.to_re "@K") (re.union (str.to_re "o[") (re.union (str.to_re "q!*") (str.to_re "7;")))))))) ((_ re.loop 9 562) (re.++ (re.union (str.to_re "+") (re.union (str.to_re "YZ9") (re.union (str.to_re "J") (str.to_re "?!")))) (re.++ (re.union (str.to_re ")") (re.union (str.to_re "wcO") (re.union (str.to_re "Se") (str.to_re "7")))) (re.++ (re.union (str.to_re "8Ui") (re.union (str.to_re "{") (re.union (str.to_re "eL") (str.to_re "m~")))) (re.union (str.to_re "6") (re.union (str.to_re "Y") (re.union (str.to_re "Xs") (str.to_re "R,'"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 10 82) (re.++ (re.union (str.to_re ".c") (re.union (str.to_re "g&2") (re.union (str.to_re "l") (str.to_re "0'")))) (re.++ (re.union (str.to_re "6jl") (re.union (str.to_re "J.") (re.union (str.to_re "4") (str.to_re "$")))) (re.++ (re.union (str.to_re "w") (re.union (str.to_re "g=") (re.union (str.to_re "Q") (str.to_re "ur")))) (re.union (str.to_re "^") (re.union (str.to_re ":") (re.union (str.to_re "~Y") (str.to_re "n@k")))))))) (re.++ ((_ re.loop 19 212) (re.++ (re.union (str.to_re ";P") (re.union (str.to_re "H?") (re.union (str.to_re "Xy") (str.to_re "&Z")))) (re.++ (re.union (str.to_re "2-&") (re.union (str.to_re "+<") (re.union (str.to_re "a") (str.to_re "qb")))) (re.++ (re.union (str.to_re "\\") (re.union (str.to_re "$y") (re.union (str.to_re "Ag") (str.to_re "dX#")))) (re.union (str.to_re "iS|") (re.union (str.to_re "]nk") (re.union (str.to_re "w") (str.to_re "FI")))))))) (re.++ ((_ re.loop 5 42) (re.++ (re.union (str.to_re "o1") (re.union (str.to_re "Jp+") (re.union (str.to_re "Ox=") (str.to_re "A")))) (re.++ (re.union (str.to_re "6") (re.union (str.to_re "(\u0022") (re.union (str.to_re "9`K") (str.to_re "[")))) (re.++ (re.union (str.to_re "o>") (re.union (str.to_re "aq") (re.union (str.to_re "1") (str.to_re "i~")))) (re.union (str.to_re "G") (re.union (str.to_re "gR") (re.union (str.to_re "o") (str.to_re "&o")))))))) ((_ re.loop 15 98) (re.++ (re.union (str.to_re "V`Y") (re.union (str.to_re "G") (re.union (str.to_re "@ol") (str.to_re ";7")))) (re.++ (re.union (str.to_re ".s") (re.union (str.to_re "g") (re.union (str.to_re "hP") (str.to_re ",")))) (re.++ (re.union (str.to_re ";l\\") (re.union (str.to_re "C@B") (re.union (str.to_re "_/") (str.to_re "9c")))) (re.union (str.to_re "o") (re.union (str.to_re "P&") (re.union (str.to_re "u[") (str.to_re "*8A"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)