(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 15 202) (re.++ (re.union (str.to_re "H") (re.union (str.to_re "Co-") (re.union (str.to_re ",") (str.to_re "V")))) (re.++ (re.union (str.to_re "Z=z") (re.union (str.to_re "qL^") (re.union (str.to_re "!em") (str.to_re "@")))) (re.++ (re.union (str.to_re "`'") (re.union (str.to_re "6") (re.union (str.to_re "*") (str.to_re "r")))) (re.union (str.to_re "M") (re.union (str.to_re "q&e") (re.union (str.to_re "d") (str.to_re "wxf")))))))) (re.++ ((_ re.loop 0 908) (re.++ (re.union (str.to_re "w<)") (re.union (str.to_re "6S") (re.union (str.to_re "w") (str.to_re "ohK")))) (re.++ (re.union (str.to_re "%") (re.union (str.to_re "Q") (re.union (str.to_re "+") (str.to_re "~Dd")))) (re.++ (re.union (str.to_re "N_e") (re.union (str.to_re "W;") (re.union (str.to_re "{") (str.to_re "ue")))) (re.union (str.to_re "Y%") (re.union (str.to_re "+e3") (re.union (str.to_re "HH") (str.to_re "AY")))))))) (re.++ ((_ re.loop 9 917) (re.++ (re.union (str.to_re "K") (re.union (str.to_re "\\::") (re.union (str.to_re "|w") (str.to_re "<Kf")))) (re.++ (re.union (str.to_re "1~o") (re.union (str.to_re ">$)") (re.union (str.to_re "w-") (str.to_re "Dq3")))) (re.++ (re.union (str.to_re "XV") (re.union (str.to_re "9G)") (re.union (str.to_re "Y") (str.to_re "\\1")))) (re.union (str.to_re "Z") (re.union (str.to_re "j") (re.union (str.to_re "^") (str.to_re "ri]")))))))) ((_ re.loop 13 758) (re.++ (re.union (str.to_re "Cg") (re.union (str.to_re "./q") (re.union (str.to_re "*") (str.to_re "5OI")))) (re.++ (re.union (str.to_re "9YE") (re.union (str.to_re ")") (re.union (str.to_re "AS") (str.to_re "wcF")))) (re.++ (re.union (str.to_re "8/F") (re.union (str.to_re "6") (re.union (str.to_re ";q") (str.to_re "Tp")))) (re.union (str.to_re "l") (re.union (str.to_re "8\\") (re.union (str.to_re "xBX") (str.to_re "Kk"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 15 325) (re.++ (re.union (str.to_re "Ak9") (re.union (str.to_re "p") (re.union (str.to_re "j1j") (str.to_re ";o@")))) (re.++ (re.union (str.to_re "?x") (re.union (str.to_re "}") (re.union (str.to_re "2.") (str.to_re ">")))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "Dh") (re.union (str.to_re "Ll") (str.to_re "x7")))) (re.union (str.to_re "sl") (re.union (str.to_re "=") (re.union (str.to_re "E#v") (str.to_re ".")))))))) (re.++ ((_ re.loop 6 890) (re.++ (re.union (str.to_re "d4@") (re.union (str.to_re "D") (re.union (str.to_re "i") (str.to_re "v:")))) (re.++ (re.union (str.to_re "4c_") (re.union (str.to_re "T") (re.union (str.to_re "p") (str.to_re "r/")))) (re.++ (re.union (str.to_re "Ft)") (re.union (str.to_re "E1") (re.union (str.to_re "#g") (str.to_re "p")))) (re.union (str.to_re "u") (re.union (str.to_re "T") (re.union (str.to_re "ifz") (str.to_re "p")))))))) (re.++ ((_ re.loop 11 368) (re.++ (re.union (str.to_re "SD") (re.union (str.to_re "FPn") (re.union (str.to_re "e") (str.to_re "(nW")))) (re.++ (re.union (str.to_re "Hz") (re.union (str.to_re ".") (re.union (str.to_re "*,8") (str.to_re "&o")))) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "scb") (re.union (str.to_re "+\u0022") (str.to_re "h")))) (re.union (str.to_re ">") (re.union (str.to_re "ZJY") (re.union (str.to_re "?\u0022P") (str.to_re "B3")))))))) ((_ re.loop 15 416) (re.++ (re.union (str.to_re "JZ=") (re.union (str.to_re "KPn") (re.union (str.to_re "*1|") (str.to_re "E@")))) (re.++ (re.union (str.to_re "jH&") (re.union (str.to_re "H/") (re.union (str.to_re "gI") (str.to_re "c")))) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "(-") (re.union (str.to_re "wnd") (str.to_re "jt")))) (re.union (str.to_re "vv;") (re.union (str.to_re "-O") (re.union (str.to_re "f") (str.to_re "d"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)