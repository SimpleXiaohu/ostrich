(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 16 254) (re.++ (re.union (str.to_re "dsi") (re.union (str.to_re ",6") (re.union (str.to_re "JJL") (str.to_re "nQ")))) (re.++ (re.union (str.to_re "?") (re.union (str.to_re "$c+") (re.union (str.to_re "$") (str.to_re "L")))) (re.++ (re.union (str.to_re "q") (re.union (str.to_re "0c'") (re.union (str.to_re "LQH") (str.to_re "\\Ky")))) (re.union (str.to_re "+c") (re.union (str.to_re "@.F") (re.union (str.to_re "R") (str.to_re "|'O")))))))) (re.++ ((_ re.loop 17 499) (re.++ (re.union (str.to_re "7z") (re.union (str.to_re "Q") (re.union (str.to_re "|5M") (str.to_re "2")))) (re.++ (re.union (str.to_re "i#") (re.union (str.to_re "fF") (re.union (str.to_re "tr") (str.to_re "/")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "W&") (re.union (str.to_re "%ol") (str.to_re "|dJ")))) (re.union (str.to_re "f") (re.union (str.to_re "~}d") (re.union (str.to_re "J") (str.to_re "\u0022Xk")))))))) (re.++ ((_ re.loop 11 543) (re.++ (re.union (str.to_re "L") (re.union (str.to_re "kI|") (re.union (str.to_re "2") (str.to_re "Bg")))) (re.++ (re.union (str.to_re "\u0022") (re.union (str.to_re "n4N") (re.union (str.to_re "^m[") (str.to_re "+jS")))) (re.++ (re.union (str.to_re "+C") (re.union (str.to_re ",") (re.union (str.to_re "*") (str.to_re "uS&")))) (re.union (str.to_re "Z1") (re.union (str.to_re "CC") (re.union (str.to_re "\\") (str.to_re "d[")))))))) ((_ re.loop 19 649) (re.++ (re.union (str.to_re "O") (re.union (str.to_re "$@C") (re.union (str.to_re "+>") (str.to_re ">t")))) (re.++ (re.union (str.to_re "g") (re.union (str.to_re "8") (re.union (str.to_re "`") (str.to_re "u")))) (re.++ (re.union (str.to_re ".") (re.union (str.to_re "ESI") (re.union (str.to_re "W{") (str.to_re "V")))) (re.union (str.to_re "i") (re.union (str.to_re "G") (re.union (str.to_re "Nzj") (str.to_re "~R=")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 3 372) (re.++ (re.union (str.to_re "ZS") (re.union (str.to_re "D}") (re.union (str.to_re "c") (str.to_re "{Ri")))) (re.++ (re.union (str.to_re "9XO") (re.union (str.to_re ",GF") (re.union (str.to_re "4h") (str.to_re "w")))) (re.++ (re.union (str.to_re "S6") (re.union (str.to_re "A") (re.union (str.to_re ")7$") (str.to_re "J")))) (re.union (str.to_re "'") (re.union (str.to_re "G") (re.union (str.to_re ",") (str.to_re "jV")))))))) (re.++ ((_ re.loop 18 263) (re.++ (re.union (str.to_re "Whq") (re.union (str.to_re "p") (re.union (str.to_re "S") (str.to_re "4UT")))) (re.++ (re.union (str.to_re "aoa") (re.union (str.to_re "CO") (re.union (str.to_re "i") (str.to_re "E}J")))) (re.++ (re.union (str.to_re "1") (re.union (str.to_re "D5R") (re.union (str.to_re "5_") (str.to_re "uJ")))) (re.union (str.to_re "q0E") (re.union (str.to_re "z,") (re.union (str.to_re "]uX") (str.to_re ";V")))))))) (re.++ ((_ re.loop 6 325) (re.++ (re.union (str.to_re "S'/") (re.union (str.to_re "+^") (re.union (str.to_re "byt") (str.to_re "&q")))) (re.++ (re.union (str.to_re "{c,") (re.union (str.to_re "xQM") (re.union (str.to_re "H") (str.to_re "D+")))) (re.++ (re.union (str.to_re "z`") (re.union (str.to_re "$") (re.union (str.to_re "]F") (str.to_re "w")))) (re.union (str.to_re "[fB") (re.union (str.to_re "AM") (re.union (str.to_re "ncq") (str.to_re ":;'")))))))) ((_ re.loop 10 136) (re.++ (re.union (str.to_re "7-B") (re.union (str.to_re "-/") (re.union (str.to_re "\u0022J") (str.to_re "2;")))) (re.++ (re.union (str.to_re "(*a") (re.union (str.to_re "Vqi") (re.union (str.to_re ":") (str.to_re "1q")))) (re.++ (re.union (str.to_re "N`}") (re.union (str.to_re "b}") (re.union (str.to_re "qJ") (str.to_re "9a")))) (re.union (str.to_re "2Q") (re.union (str.to_re "nNW") (re.union (str.to_re "bd") (str.to_re "}"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
