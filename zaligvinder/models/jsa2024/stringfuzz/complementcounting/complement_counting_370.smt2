(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 5 374) (re.++ (re.union (str.to_re "h#x") (re.union (str.to_re "-") (re.union (str.to_re "*+T") (str.to_re "%Z")))) (re.++ (re.union (str.to_re "(") (re.union (str.to_re "An") (re.union (str.to_re "Z") (str.to_re "h=")))) (re.++ (re.union (str.to_re "'ua") (re.union (str.to_re "N{") (re.union (str.to_re "J") (str.to_re "2^")))) (re.union (str.to_re "jY[") (re.union (str.to_re "D") (re.union (str.to_re "MN") (str.to_re "d[")))))))) (re.++ ((_ re.loop 12 536) (re.++ (re.union (str.to_re "c") (re.union (str.to_re "_") (re.union (str.to_re ".nT") (str.to_re "[")))) (re.++ (re.union (str.to_re "7p") (re.union (str.to_re "l!j") (re.union (str.to_re "3") (str.to_re "F,")))) (re.++ (re.union (str.to_re "C`A") (re.union (str.to_re "(B#") (re.union (str.to_re "K") (str.to_re "<")))) (re.union (str.to_re "j") (re.union (str.to_re "rn") (re.union (str.to_re "='6") (str.to_re "{")))))))) (re.++ ((_ re.loop 12 310) (re.++ (re.union (str.to_re "2s") (re.union (str.to_re "2L8") (re.union (str.to_re ";R6") (str.to_re "Nz")))) (re.++ (re.union (str.to_re "(j") (re.union (str.to_re "i") (re.union (str.to_re "xj") (str.to_re "d**")))) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "EP") (re.union (str.to_re "~") (str.to_re "2")))) (re.union (str.to_re "Z") (re.union (str.to_re "1") (re.union (str.to_re "w") (str.to_re "s")))))))) ((_ re.loop 20 72) (re.++ (re.union (str.to_re "i") (re.union (str.to_re "c") (re.union (str.to_re "YiD") (str.to_re "sr")))) (re.++ (re.union (str.to_re "9W/") (re.union (str.to_re "n") (re.union (str.to_re "W") (str.to_re "I")))) (re.++ (re.union (str.to_re "2{;") (re.union (str.to_re "(") (re.union (str.to_re "'7") (str.to_re "V:")))) (re.union (str.to_re "`0") (re.union (str.to_re "BX") (re.union (str.to_re "N3") (str.to_re "ls")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 1 754) (re.++ (re.union (str.to_re "wg1") (re.union (str.to_re "k") (re.union (str.to_re "O7") (str.to_re "]0&")))) (re.++ (re.union (str.to_re "pB") (re.union (str.to_re "&") (re.union (str.to_re "'") (str.to_re "j")))) (re.++ (re.union (str.to_re "}q") (re.union (str.to_re "+Z7") (re.union (str.to_re "Mm'") (str.to_re "2R")))) (re.union (str.to_re "O[%") (re.union (str.to_re "$") (re.union (str.to_re "dB") (str.to_re "@a")))))))) (re.++ ((_ re.loop 4 497) (re.++ (re.union (str.to_re "],") (re.union (str.to_re "SH") (re.union (str.to_re "W6") (str.to_re "i)M")))) (re.++ (re.union (str.to_re "!Q") (re.union (str.to_re "u") (re.union (str.to_re "Y2Z") (str.to_re "kn1")))) (re.++ (re.union (str.to_re "C_J") (re.union (str.to_re "y;w") (re.union (str.to_re "\\") (str.to_re "[-}")))) (re.union (str.to_re "q`") (re.union (str.to_re "6LC") (re.union (str.to_re "%") (str.to_re "/fY")))))))) (re.++ ((_ re.loop 20 201) (re.++ (re.union (str.to_re "3XW") (re.union (str.to_re ">") (re.union (str.to_re "2") (str.to_re "$m")))) (re.++ (re.union (str.to_re "\\&") (re.union (str.to_re "Q5") (re.union (str.to_re "O%m") (str.to_re "i,/")))) (re.++ (re.union (str.to_re "?b.") (re.union (str.to_re ".p") (re.union (str.to_re ".q/") (str.to_re "==R")))) (re.union (str.to_re ",}") (re.union (str.to_re "Y") (re.union (str.to_re "/") (str.to_re "H")))))))) ((_ re.loop 14 399) (re.++ (re.union (str.to_re "BE") (re.union (str.to_re "5") (re.union (str.to_re ".pw") (str.to_re "z")))) (re.++ (re.union (str.to_re "a#k") (re.union (str.to_re "yw") (re.union (str.to_re "aZ") (str.to_re "t^G")))) (re.++ (re.union (str.to_re "cgY") (re.union (str.to_re "X") (re.union (str.to_re "[") (str.to_re "9=B")))) (re.union (str.to_re "c") (re.union (str.to_re ")M#") (re.union (str.to_re "gw}") (str.to_re "`,2"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)