(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 3 543) (re.++ (re.union (str.to_re "b\\d") (re.union (str.to_re "3h") (re.union (str.to_re "NS") (str.to_re "47")))) (re.++ (re.union (str.to_re "d") (re.union (str.to_re "z$E") (re.union (str.to_re "Fp0") (str.to_re "uE\\")))) (re.++ (re.union (str.to_re "'}") (re.union (str.to_re "4") (re.union (str.to_re "q") (str.to_re "vYo")))) (re.union (str.to_re ":d") (re.union (str.to_re "?n'") (re.union (str.to_re "#qN") (str.to_re "e")))))))) (re.++ ((_ re.loop 11 774) (re.++ (re.union (str.to_re "m(!") (re.union (str.to_re "8BW") (re.union (str.to_re "+D,") (str.to_re "A")))) (re.++ (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "lf") (str.to_re "}0^")))) (re.++ (re.union (str.to_re ">p") (re.union (str.to_re ")j") (re.union (str.to_re "-") (str.to_re "*")))) (re.union (str.to_re "#i)") (re.union (str.to_re "d") (re.union (str.to_re "v") (str.to_re ")V")))))))) (re.++ ((_ re.loop 17 369) (re.++ (re.union (str.to_re "d4") (re.union (str.to_re "<") (re.union (str.to_re "or") (str.to_re "E")))) (re.++ (re.union (str.to_re "[G") (re.union (str.to_re "OR") (re.union (str.to_re "S~") (str.to_re "*7")))) (re.++ (re.union (str.to_re "7") (re.union (str.to_re "u") (re.union (str.to_re "o") (str.to_re "sS{")))) (re.union (str.to_re "}N") (re.union (str.to_re "!Ar") (re.union (str.to_re "!-") (str.to_re "0f")))))))) ((_ re.loop 17 265) (re.++ (re.union (str.to_re "6N*") (re.union (str.to_re "E") (re.union (str.to_re "w:") (str.to_re "x")))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re "T=") (re.union (str.to_re "W|L") (str.to_re "_{")))) (re.++ (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "yd%") (str.to_re "h")))) (re.union (str.to_re "ieo") (re.union (str.to_re "a4") (re.union (str.to_re "Nas") (str.to_re "5u")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 19 767) (re.++ (re.union (str.to_re "bhk") (re.union (str.to_re "cJv") (re.union (str.to_re "=") (str.to_re "jhC")))) (re.++ (re.union (str.to_re "*Jq") (re.union (str.to_re "R") (re.union (str.to_re "qz") (str.to_re "2\\/")))) (re.++ (re.union (str.to_re ".5g") (re.union (str.to_re "!S") (re.union (str.to_re "7") (str.to_re "O")))) (re.union (str.to_re "JY") (re.union (str.to_re "3l") (re.union (str.to_re "&M") (str.to_re "S")))))))) (re.++ ((_ re.loop 16 595) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "xp") (re.union (str.to_re "h") (str.to_re "}")))) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "{t") (re.union (str.to_re "N@") (str.to_re "}[")))) (re.++ (re.union (str.to_re "4<a") (re.union (str.to_re ";") (re.union (str.to_re "C0") (str.to_re "t")))) (re.union (str.to_re "(") (re.union (str.to_re "u") (re.union (str.to_re "*w") (str.to_re "us")))))))) (re.++ ((_ re.loop 5 540) (re.++ (re.union (str.to_re "Lh'") (re.union (str.to_re "*vt") (re.union (str.to_re "bF") (str.to_re "2cO")))) (re.++ (re.union (str.to_re ">HF") (re.union (str.to_re "Nyq") (re.union (str.to_re "%eF") (str.to_re "G22")))) (re.++ (re.union (str.to_re "PL") (re.union (str.to_re "p") (re.union (str.to_re "k:B") (str.to_re "6")))) (re.union (str.to_re "X,{") (re.union (str.to_re "c") (re.union (str.to_re "DAj") (str.to_re "E")))))))) ((_ re.loop 7 832) (re.++ (re.union (str.to_re "M") (re.union (str.to_re "^") (re.union (str.to_re "Ng") (str.to_re "-")))) (re.++ (re.union (str.to_re "DNC") (re.union (str.to_re "l") (re.union (str.to_re "cT#") (str.to_re "Jd5")))) (re.++ (re.union (str.to_re "'") (re.union (str.to_re "Ot") (re.union (str.to_re ",") (str.to_re "4TT")))) (re.union (str.to_re "1%N") (re.union (str.to_re "0") (re.union (str.to_re "@") (str.to_re "Bd+"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
