(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 4 909) (re.++ (re.union (str.to_re "zs") (re.union (str.to_re "nsZ") (re.union (str.to_re "X") (str.to_re "=`")))) (re.++ (re.union (str.to_re "[L") (re.union (str.to_re "h") (re.union (str.to_re "%;R") (str.to_re "Ox")))) (re.++ (re.union (str.to_re "H~") (re.union (str.to_re "O") (re.union (str.to_re "oU") (str.to_re "MgU")))) (re.union (str.to_re "V0") (re.union (str.to_re "CW") (re.union (str.to_re "_z=") (str.to_re "q|")))))))) (re.++ ((_ re.loop 11 444) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "b") (re.union (str.to_re "3YU") (str.to_re "2")))) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "N") (re.union (str.to_re "i2") (str.to_re "x]")))) (re.++ (re.union (str.to_re "!6") (re.union (str.to_re "!") (re.union (str.to_re "|") (str.to_re "?")))) (re.union (str.to_re "Lxn") (re.union (str.to_re "\\#") (re.union (str.to_re "Tqk") (str.to_re "m")))))))) (re.++ ((_ re.loop 7 945) (re.++ (re.union (str.to_re "MBT") (re.union (str.to_re "b&t") (re.union (str.to_re "nu") (str.to_re "r")))) (re.++ (re.union (str.to_re "s|P") (re.union (str.to_re ";|") (re.union (str.to_re "fa#") (str.to_re "w^")))) (re.++ (re.union (str.to_re "?") (re.union (str.to_re "!9C") (re.union (str.to_re "R_r") (str.to_re "{h")))) (re.union (str.to_re "8:p") (re.union (str.to_re "`#Z") (re.union (str.to_re "&v+") (str.to_re "x7E")))))))) ((_ re.loop 6 734) (re.++ (re.union (str.to_re ":") (re.union (str.to_re "Y") (re.union (str.to_re ",*#") (str.to_re "?I")))) (re.++ (re.union (str.to_re "7") (re.union (str.to_re "c") (re.union (str.to_re ";@") (str.to_re "V[")))) (re.++ (re.union (str.to_re "8") (re.union (str.to_re ">c+") (re.union (str.to_re ">X") (str.to_re "_d")))) (re.union (str.to_re "q]t") (re.union (str.to_re "|I") (re.union (str.to_re "wg") (str.to_re "0")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 18 594) (re.++ (re.union (str.to_re "<Y=") (re.union (str.to_re "[") (re.union (str.to_re "]") (str.to_re "Vwt")))) (re.++ (re.union (str.to_re "}") (re.union (str.to_re "g^F") (re.union (str.to_re ")G.") (str.to_re "Z")))) (re.++ (re.union (str.to_re ")\u0022Q") (re.union (str.to_re "oiH") (re.union (str.to_re "M\\") (str.to_re "!")))) (re.union (str.to_re "-") (re.union (str.to_re "@w") (re.union (str.to_re "t/c") (str.to_re "o&Z")))))))) (re.++ ((_ re.loop 20 463) (re.++ (re.union (str.to_re "QF") (re.union (str.to_re "o") (re.union (str.to_re "G") (str.to_re "k")))) (re.++ (re.union (str.to_re ")^M") (re.union (str.to_re "H") (re.union (str.to_re "\u0022j") (str.to_re "CL4")))) (re.++ (re.union (str.to_re "g") (re.union (str.to_re "Y") (re.union (str.to_re "xX") (str.to_re ">o")))) (re.union (str.to_re "Sw") (re.union (str.to_re "(") (re.union (str.to_re "8qc") (str.to_re "'-{")))))))) (re.++ ((_ re.loop 10 887) (re.++ (re.union (str.to_re "0/") (re.union (str.to_re "|") (re.union (str.to_re "_tG") (str.to_re "Rx")))) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "jQN") (re.union (str.to_re "=") (str.to_re ";")))) (re.++ (re.union (str.to_re "z") (re.union (str.to_re "?A") (re.union (str.to_re "TIt") (str.to_re "TJ0")))) (re.union (str.to_re "M") (re.union (str.to_re "7") (re.union (str.to_re "in|") (str.to_re "H")))))))) ((_ re.loop 0 960) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "!m") (re.union (str.to_re "aV") (str.to_re "/o&")))) (re.++ (re.union (str.to_re "]J") (re.union (str.to_re "SC") (re.union (str.to_re "L]") (str.to_re "1Tx")))) (re.++ (re.union (str.to_re "]i") (re.union (str.to_re "Tl'") (re.union (str.to_re "p{") (str.to_re "mzU")))) (re.union (str.to_re "y") (re.union (str.to_re "i") (re.union (str.to_re ";") (str.to_re "B"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
