(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 9 297) (re.++ (re.union (str.to_re "+9") (re.union (str.to_re "W") (re.union (str.to_re "4") (str.to_re "N")))) (re.++ (re.union (str.to_re "VL") (re.union (str.to_re ">v!") (re.union (str.to_re "U") (str.to_re "N`")))) (re.++ (re.union (str.to_re "Y") (re.union (str.to_re "u") (re.union (str.to_re "9@") (str.to_re "<x")))) (re.union (str.to_re "/") (re.union (str.to_re "ox") (re.union (str.to_re ")") (str.to_re "4")))))))) (re.++ ((_ re.loop 9 389) (re.++ (re.union (str.to_re "Y2") (re.union (str.to_re "H*2") (re.union (str.to_re "B'") (str.to_re "l(s")))) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "t") (re.union (str.to_re "EB") (str.to_re "F&F")))) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "&%") (re.union (str.to_re ".") (str.to_re "m=")))) (re.union (str.to_re "N") (re.union (str.to_re "$`") (re.union (str.to_re "*R") (str.to_re "E")))))))) (re.++ ((_ re.loop 0 858) (re.++ (re.union (str.to_re "`x") (re.union (str.to_re "Y@") (re.union (str.to_re "2y") (str.to_re "Y&;")))) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "<~") (re.union (str.to_re "\u0022=") (str.to_re "8")))) (re.++ (re.union (str.to_re "Cd") (re.union (str.to_re "Q") (re.union (str.to_re "%7>") (str.to_re "@")))) (re.union (str.to_re "kHt") (re.union (str.to_re "k85") (re.union (str.to_re "E") (str.to_re "-bu")))))))) ((_ re.loop 0 907) (re.++ (re.union (str.to_re "/Bc") (re.union (str.to_re "6L2") (re.union (str.to_re "3l") (str.to_re "f")))) (re.++ (re.union (str.to_re "0{") (re.union (str.to_re "T") (re.union (str.to_re "C._") (str.to_re "iH")))) (re.++ (re.union (str.to_re "mJ") (re.union (str.to_re "ho9") (re.union (str.to_re ";") (str.to_re "p;?")))) (re.union (str.to_re "1") (re.union (str.to_re "<") (re.union (str.to_re "7v") (str.to_re "Z"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 3 122) (re.++ (re.union (str.to_re "i8I") (re.union (str.to_re "mvw") (re.union (str.to_re "o`") (str.to_re "Gvo")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "b") (re.union (str.to_re "$77") (str.to_re ";,3")))) (re.++ (re.union (str.to_re "uVI") (re.union (str.to_re "n05") (re.union (str.to_re "5e") (str.to_re "i@")))) (re.union (str.to_re "dL#") (re.union (str.to_re "O") (re.union (str.to_re "?$") (str.to_re "L")))))))) (re.++ ((_ re.loop 1 327) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "`") (re.union (str.to_re "-b") (str.to_re "V6M")))) (re.++ (re.union (str.to_re "S") (re.union (str.to_re "t_x") (re.union (str.to_re "(") (str.to_re "q")))) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "I") (re.union (str.to_re "[") (str.to_re "K\u0022`")))) (re.union (str.to_re "Up7") (re.union (str.to_re "{") (re.union (str.to_re "2") (str.to_re "0")))))))) (re.++ ((_ re.loop 2 926) (re.++ (re.union (str.to_re "|8W") (re.union (str.to_re "\\e") (re.union (str.to_re "g") (str.to_re "]'-")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "_") (re.union (str.to_re "{") (str.to_re "Fo$")))) (re.++ (re.union (str.to_re "U1") (re.union (str.to_re "y1") (re.union (str.to_re "C6") (str.to_re "ld")))) (re.union (str.to_re "q") (re.union (str.to_re "K") (re.union (str.to_re "c7") (str.to_re ",4")))))))) ((_ re.loop 17 720) (re.++ (re.union (str.to_re "U") (re.union (str.to_re ")aP") (re.union (str.to_re "CP") (str.to_re "Ke")))) (re.++ (re.union (str.to_re "x_3") (re.union (str.to_re "o") (re.union (str.to_re "d") (str.to_re "oo")))) (re.++ (re.union (str.to_re ";") (re.union (str.to_re "7") (re.union (str.to_re "9[") (str.to_re "ljf")))) (re.union (str.to_re "h^Q") (re.union (str.to_re "T") (re.union (str.to_re "2p") (str.to_re "L@,"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
