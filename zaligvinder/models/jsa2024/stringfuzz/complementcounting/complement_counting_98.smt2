(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 19 877) (re.++ (re.union (str.to_re "A2") (re.union (str.to_re "P") (re.union (str.to_re "h") (str.to_re "y#")))) (re.++ (re.union (str.to_re ">9") (re.union (str.to_re "BCA") (re.union (str.to_re "~oX") (str.to_re "9")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "q;V") (re.union (str.to_re "6>:") (str.to_re "^:")))) (re.union (str.to_re "z/") (re.union (str.to_re "N") (re.union (str.to_re "Q|\\") (str.to_re "a")))))))) (re.++ ((_ re.loop 9 831) (re.++ (re.union (str.to_re "L|j") (re.union (str.to_re "pAN") (re.union (str.to_re "h:") (str.to_re "H_?")))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "cld") (re.union (str.to_re "6{U") (str.to_re "K")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "=2") (re.union (str.to_re "IZ") (str.to_re "}o")))) (re.union (str.to_re "O5") (re.union (str.to_re "G") (re.union (str.to_re ",)") (str.to_re "H")))))))) (re.++ ((_ re.loop 8 272) (re.++ (re.union (str.to_re "^U}") (re.union (str.to_re "Wur") (re.union (str.to_re "`") (str.to_re "X")))) (re.++ (re.union (str.to_re "b>t") (re.union (str.to_re "d") (re.union (str.to_re "$") (str.to_re "u")))) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "/^") (re.union (str.to_re "+") (str.to_re "U")))) (re.union (str.to_re "WxF") (re.union (str.to_re "9") (re.union (str.to_re "8Y:") (str.to_re "jy")))))))) ((_ re.loop 0 683) (re.++ (re.union (str.to_re "XH") (re.union (str.to_re ">Z") (re.union (str.to_re "1G") (str.to_re ")s4")))) (re.++ (re.union (str.to_re "$T") (re.union (str.to_re "-") (re.union (str.to_re "_P") (str.to_re "y%q")))) (re.++ (re.union (str.to_re "i|") (re.union (str.to_re "<") (re.union (str.to_re "JSE") (str.to_re "@+D")))) (re.union (str.to_re "0") (re.union (str.to_re "4Pz") (re.union (str.to_re "]") (str.to_re "\u0022"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 13 577) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "H") (re.union (str.to_re "5+d") (str.to_re "G}")))) (re.++ (re.union (str.to_re "{") (re.union (str.to_re ":") (re.union (str.to_re "`bY") (str.to_re "X")))) (re.++ (re.union (str.to_re "ds") (re.union (str.to_re "X") (re.union (str.to_re "4^5") (str.to_re "$,")))) (re.union (str.to_re "0<") (re.union (str.to_re "!G") (re.union (str.to_re "+") (str.to_re "@")))))))) (re.++ ((_ re.loop 18 847) (re.++ (re.union (str.to_re "0N") (re.union (str.to_re "@)W") (re.union (str.to_re "h") (str.to_re "z90")))) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "F") (re.union (str.to_re "Z#}") (str.to_re "tY")))) (re.++ (re.union (str.to_re "P*A") (re.union (str.to_re "ZU") (re.union (str.to_re "~") (str.to_re ".G")))) (re.union (str.to_re "#'") (re.union (str.to_re "P^") (re.union (str.to_re "n`") (str.to_re "Bv")))))))) (re.++ ((_ re.loop 2 980) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "B") (re.union (str.to_re "V&") (str.to_re "|5s")))) (re.++ (re.union (str.to_re "66c") (re.union (str.to_re "v") (re.union (str.to_re "@#") (str.to_re "]'=")))) (re.++ (re.union (str.to_re "y") (re.union (str.to_re "*") (re.union (str.to_re "k7") (str.to_re "?c]")))) (re.union (str.to_re "<") (re.union (str.to_re ">E") (re.union (str.to_re "I_") (str.to_re "o")))))))) ((_ re.loop 6 534) (re.++ (re.union (str.to_re "21") (re.union (str.to_re "T\u0022") (re.union (str.to_re "+n") (str.to_re ")6")))) (re.++ (re.union (str.to_re "y") (re.union (str.to_re "5hf") (re.union (str.to_re "@2&") (str.to_re "f")))) (re.++ (re.union (str.to_re "?") (re.union (str.to_re "y") (re.union (str.to_re "i)") (str.to_re "RD")))) (re.union (str.to_re "Zp^") (re.union (str.to_re "u") (re.union (str.to_re "U") (str.to_re ":B"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
