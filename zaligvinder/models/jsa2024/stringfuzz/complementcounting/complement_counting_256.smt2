(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 11 593) (re.++ (re.union (str.to_re "@Z") (re.union (str.to_re "B") (re.union (str.to_re "G") (str.to_re "*=")))) (re.++ (re.union (str.to_re "uu") (re.union (str.to_re "),8") (re.union (str.to_re "/r") (str.to_re "b")))) (re.++ (re.union (str.to_re "8") (re.union (str.to_re "xIs") (re.union (str.to_re "~{\u0022") (str.to_re "h`V")))) (re.union (str.to_re "R") (re.union (str.to_re "te'") (re.union (str.to_re "@&") (str.to_re "0A")))))))) (re.++ ((_ re.loop 14 289) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "I") (re.union (str.to_re ".^") (str.to_re "RX.")))) (re.++ (re.union (str.to_re "I") (re.union (str.to_re "fm&") (re.union (str.to_re "h$") (str.to_re ";.8")))) (re.++ (re.union (str.to_re "F") (re.union (str.to_re "N)") (re.union (str.to_re "$%6") (str.to_re "SjP")))) (re.union (str.to_re "f9") (re.union (str.to_re "k") (re.union (str.to_re "FK") (str.to_re "l{")))))))) (re.++ ((_ re.loop 9 681) (re.++ (re.union (str.to_re "b(m") (re.union (str.to_re "!ZJ") (re.union (str.to_re ".@@") (str.to_re "5}C")))) (re.++ (re.union (str.to_re ")") (re.union (str.to_re "q?h") (re.union (str.to_re "=-") (str.to_re "E2h")))) (re.++ (re.union (str.to_re "%") (re.union (str.to_re "fR") (re.union (str.to_re "1xd") (str.to_re "_n")))) (re.union (str.to_re "crH") (re.union (str.to_re "A6") (re.union (str.to_re "D") (str.to_re "Z7(")))))))) ((_ re.loop 17 447) (re.++ (re.union (str.to_re "$N,") (re.union (str.to_re "[") (re.union (str.to_re "B") (str.to_re "A>-")))) (re.++ (re.union (str.to_re "#") (re.union (str.to_re "7") (re.union (str.to_re "q") (str.to_re "aLH")))) (re.++ (re.union (str.to_re "ya") (re.union (str.to_re "Rg") (re.union (str.to_re "z>") (str.to_re "c&T")))) (re.union (str.to_re "!") (re.union (str.to_re "4DJ") (re.union (str.to_re "7") (str.to_re "V")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 5 550) (re.++ (re.union (str.to_re ".#h") (re.union (str.to_re "~") (re.union (str.to_re "z") (str.to_re "eeg")))) (re.++ (re.union (str.to_re "%") (re.union (str.to_re "Jk,") (re.union (str.to_re "\\4") (str.to_re "\\n")))) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "7t") (re.union (str.to_re "}bW") (str.to_re "!#7")))) (re.union (str.to_re "ts") (re.union (str.to_re "f") (re.union (str.to_re "G#F") (str.to_re "b")))))))) (re.++ ((_ re.loop 20 795) (re.++ (re.union (str.to_re "Mpw") (re.union (str.to_re "I") (re.union (str.to_re "eL") (str.to_re "2x,")))) (re.++ (re.union (str.to_re "\\u") (re.union (str.to_re "73f") (re.union (str.to_re "I+p") (str.to_re "Coh")))) (re.++ (re.union (str.to_re "0SL") (re.union (str.to_re "^s") (re.union (str.to_re ".W") (str.to_re "7#")))) (re.union (str.to_re "L(") (re.union (str.to_re ",") (re.union (str.to_re "X+e") (str.to_re "w3")))))))) (re.++ ((_ re.loop 4 678) (re.++ (re.union (str.to_re "r") (re.union (str.to_re "J}") (re.union (str.to_re ",") (str.to_re "7-S")))) (re.++ (re.union (str.to_re "'") (re.union (str.to_re "V") (re.union (str.to_re ".") (str.to_re "u")))) (re.++ (re.union (str.to_re "Vu") (re.union (str.to_re "7") (re.union (str.to_re "@**") (str.to_re ")>2")))) (re.union (str.to_re "M[!") (re.union (str.to_re "fD!") (re.union (str.to_re "aPN") (str.to_re "%")))))))) ((_ re.loop 13 841) (re.++ (re.union (str.to_re "TI") (re.union (str.to_re ":m") (re.union (str.to_re "]<?") (str.to_re "7ru")))) (re.++ (re.union (str.to_re "+5") (re.union (str.to_re "9Y") (re.union (str.to_re "=HM") (str.to_re "D_")))) (re.++ (re.union (str.to_re "Wg") (re.union (str.to_re ",=[") (re.union (str.to_re "i") (str.to_re "r{w")))) (re.union (str.to_re "`IV") (re.union (str.to_re "9") (re.union (str.to_re "<") (str.to_re "Ja4"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)