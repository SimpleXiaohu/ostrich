(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 6 936) (re.++ (re.union (str.to_re "W") (re.union (str.to_re "ij") (re.union (str.to_re "z") (str.to_re "(vl")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "k") (re.union (str.to_re "@") (str.to_re "V}m")))) (re.++ (re.union (str.to_re "20") (re.union (str.to_re "O") (re.union (str.to_re "lh") (str.to_re "K")))) (re.union (str.to_re "(") (re.union (str.to_re "g^L") (re.union (str.to_re "(<") (str.to_re "Zl!")))))))) (re.++ ((_ re.loop 4 612) (re.++ (re.union (str.to_re "5") (re.union (str.to_re "p") (re.union (str.to_re "1d") (str.to_re "_")))) (re.++ (re.union (str.to_re "\\[]") (re.union (str.to_re "8H(") (re.union (str.to_re "x0") (str.to_re "bt")))) (re.++ (re.union (str.to_re "cK") (re.union (str.to_re "UB") (re.union (str.to_re "v") (str.to_re "w|")))) (re.union (str.to_re "n6") (re.union (str.to_re "Tf>") (re.union (str.to_re "nP") (str.to_re "'=")))))))) (re.++ ((_ re.loop 6 176) (re.++ (re.union (str.to_re "J") (re.union (str.to_re "L") (re.union (str.to_re "Q") (str.to_re "d")))) (re.++ (re.union (str.to_re "S0") (re.union (str.to_re "Y\\") (re.union (str.to_re "'qX") (str.to_re "EJ")))) (re.++ (re.union (str.to_re "eS") (re.union (str.to_re "Dq6") (re.union (str.to_re "ie") (str.to_re "($e")))) (re.union (str.to_re "<M") (re.union (str.to_re "g") (re.union (str.to_re "8g") (str.to_re "D")))))))) ((_ re.loop 17 90) (re.++ (re.union (str.to_re "U&") (re.union (str.to_re "}c") (re.union (str.to_re "9") (str.to_re "RJ")))) (re.++ (re.union (str.to_re "i%") (re.union (str.to_re "mY:") (re.union (str.to_re "JZK") (str.to_re "S&")))) (re.++ (re.union (str.to_re ".`") (re.union (str.to_re "5") (re.union (str.to_re "]pQ") (str.to_re "2oI")))) (re.union (str.to_re "\\,h") (re.union (str.to_re "Y") (re.union (str.to_re "i?b") (str.to_re "S")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 12 240) (re.++ (re.union (str.to_re "(c") (re.union (str.to_re "Xa>") (re.union (str.to_re "2") (str.to_re "|j")))) (re.++ (re.union (str.to_re "N(") (re.union (str.to_re "p") (re.union (str.to_re "<tx") (str.to_re "BF")))) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "\u0022") (re.union (str.to_re "e") (str.to_re "p")))) (re.union (str.to_re "o|") (re.union (str.to_re "q+") (re.union (str.to_re "HA2") (str.to_re "''o")))))))) (re.++ ((_ re.loop 4 505) (re.++ (re.union (str.to_re "+^*") (re.union (str.to_re "nu5") (re.union (str.to_re "b") (str.to_re "0")))) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "Is") (re.union (str.to_re "\\(F") (str.to_re "^=I")))) (re.++ (re.union (str.to_re "~") (re.union (str.to_re "^d_") (re.union (str.to_re "j/O") (str.to_re "U=s")))) (re.union (str.to_re "Q|") (re.union (str.to_re "*2*") (re.union (str.to_re "-") (str.to_re "E")))))))) (re.++ ((_ re.loop 6 927) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "]") (re.union (str.to_re "C") (str.to_re "{")))) (re.++ (re.union (str.to_re "VoR") (re.union (str.to_re "TfI") (re.union (str.to_re "D") (str.to_re "Mm{")))) (re.++ (re.union (str.to_re "0") (re.union (str.to_re ";z") (re.union (str.to_re "[;e") (str.to_re "a")))) (re.union (str.to_re "LB") (re.union (str.to_re "h") (re.union (str.to_re "LY") (str.to_re "#e")))))))) ((_ re.loop 18 452) (re.++ (re.union (str.to_re "o!") (re.union (str.to_re "t") (re.union (str.to_re "zu") (str.to_re "z,f")))) (re.++ (re.union (str.to_re "Qp@") (re.union (str.to_re "zi!") (re.union (str.to_re "+") (str.to_re "SO")))) (re.++ (re.union (str.to_re "K+") (re.union (str.to_re ".B") (re.union (str.to_re "z") (str.to_re "WYY")))) (re.union (str.to_re "lih") (re.union (str.to_re "tI") (re.union (str.to_re "r") (str.to_re "yS"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
