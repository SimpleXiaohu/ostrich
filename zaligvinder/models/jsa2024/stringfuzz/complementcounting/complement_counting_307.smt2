(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 5 237) (re.++ (re.union (str.to_re "p") (re.union (str.to_re "u9") (re.union (str.to_re "{Qd") (str.to_re "i2")))) (re.++ (re.union (str.to_re "T") (re.union (str.to_re "q]") (re.union (str.to_re "R@") (str.to_re "`")))) (re.++ (re.union (str.to_re "SKH") (re.union (str.to_re "Cc#") (re.union (str.to_re "\\Dm") (str.to_re "nG+")))) (re.union (str.to_re "&q") (re.union (str.to_re "KR") (re.union (str.to_re "[t") (str.to_re "\\h")))))))) (re.++ ((_ re.loop 18 985) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "b") (re.union (str.to_re "5%") (str.to_re "\\k")))) (re.++ (re.union (str.to_re "L") (re.union (str.to_re "G&h") (re.union (str.to_re "H|") (str.to_re "DMf")))) (re.++ (re.union (str.to_re "f1L") (re.union (str.to_re "bA?") (re.union (str.to_re "Hf") (str.to_re "3A")))) (re.union (str.to_re "!>A") (re.union (str.to_re "ieO") (re.union (str.to_re ">!") (str.to_re "f&")))))))) (re.++ ((_ re.loop 17 227) (re.++ (re.union (str.to_re "8>/") (re.union (str.to_re "<g") (re.union (str.to_re "/H") (str.to_re "nI")))) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "u") (re.union (str.to_re "$o") (str.to_re "0")))) (re.++ (re.union (str.to_re "]n)") (re.union (str.to_re "4") (re.union (str.to_re "x") (str.to_re "y")))) (re.union (str.to_re "JC8") (re.union (str.to_re ";Ss") (re.union (str.to_re ":") (str.to_re "A")))))))) ((_ re.loop 6 192) (re.++ (re.union (str.to_re "+M") (re.union (str.to_re "N") (re.union (str.to_re "I") (str.to_re "[ho")))) (re.++ (re.union (str.to_re "{a") (re.union (str.to_re "cgn") (re.union (str.to_re "bj") (str.to_re "L!|")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "`\\") (re.union (str.to_re "W-") (str.to_re "B")))) (re.union (str.to_re "dS") (re.union (str.to_re "B") (re.union (str.to_re ":") (str.to_re "%<")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 1 564) (re.++ (re.union (str.to_re "!3f") (re.union (str.to_re "V") (re.union (str.to_re "IP") (str.to_re ")")))) (re.++ (re.union (str.to_re "GSk") (re.union (str.to_re ",") (re.union (str.to_re "D1") (str.to_re "&XN")))) (re.++ (re.union (str.to_re "l/)") (re.union (str.to_re "Sa") (re.union (str.to_re "|I") (str.to_re "}hr")))) (re.union (str.to_re "5^") (re.union (str.to_re ";[") (re.union (str.to_re "^A4") (str.to_re "obd")))))))) (re.++ ((_ re.loop 18 862) (re.++ (re.union (str.to_re "@(") (re.union (str.to_re "eK") (re.union (str.to_re "-c:") (str.to_re "m")))) (re.++ (re.union (str.to_re "~") (re.union (str.to_re "Dx") (re.union (str.to_re "72?") (str.to_re "_Z")))) (re.++ (re.union (str.to_re "[j") (re.union (str.to_re "Xw") (re.union (str.to_re "5,-") (str.to_re ".,Y")))) (re.union (str.to_re "4v`") (re.union (str.to_re "Ur") (re.union (str.to_re "c") (str.to_re "[?")))))))) (re.++ ((_ re.loop 0 273) (re.++ (re.union (str.to_re "h3\u0022") (re.union (str.to_re "-") (re.union (str.to_re "$,") (str.to_re "Z(")))) (re.++ (re.union (str.to_re "`:") (re.union (str.to_re "s") (re.union (str.to_re "OQX") (str.to_re "._")))) (re.++ (re.union (str.to_re "_P") (re.union (str.to_re "[1t") (re.union (str.to_re "%*@") (str.to_re "re3")))) (re.union (str.to_re "`{") (re.union (str.to_re "F8{") (re.union (str.to_re "Q") (str.to_re "*Ho")))))))) ((_ re.loop 8 752) (re.++ (re.union (str.to_re "1=") (re.union (str.to_re "~1}") (re.union (str.to_re "1") (str.to_re "C7")))) (re.++ (re.union (str.to_re "(") (re.union (str.to_re "t") (re.union (str.to_re "e!") (str.to_re "9/")))) (re.++ (re.union (str.to_re "BGN") (re.union (str.to_re "Ku") (re.union (str.to_re "dq") (str.to_re "wu")))) (re.union (str.to_re "C") (re.union (str.to_re "4") (re.union (str.to_re "D|u") (str.to_re "="))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)