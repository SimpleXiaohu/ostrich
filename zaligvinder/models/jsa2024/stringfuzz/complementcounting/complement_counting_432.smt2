(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 20 423) (re.++ (re.union (str.to_re "ZFv") (re.union (str.to_re "j") (re.union (str.to_re "5") (str.to_re "k")))) (re.++ (re.union (str.to_re "+") (re.union (str.to_re "W") (re.union (str.to_re "`<") (str.to_re "B[o")))) (re.++ (re.union (str.to_re "\\") (re.union (str.to_re "xHp") (re.union (str.to_re "J8") (str.to_re "ZI")))) (re.union (str.to_re "0`w") (re.union (str.to_re "]m5") (re.union (str.to_re "1AL") (str.to_re "$7")))))))) (re.++ ((_ re.loop 13 566) (re.++ (re.union (str.to_re "0") (re.union (str.to_re "<") (re.union (str.to_re "j") (str.to_re "3:")))) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "@") (re.union (str.to_re "3K;") (str.to_re "o.")))) (re.++ (re.union (str.to_re "%") (re.union (str.to_re "w-") (re.union (str.to_re "1c") (str.to_re "9")))) (re.union (str.to_re "=Vr") (re.union (str.to_re "w") (re.union (str.to_re "ljB") (str.to_re "6")))))))) (re.++ ((_ re.loop 12 320) (re.++ (re.union (str.to_re "A^D") (re.union (str.to_re "48_") (re.union (str.to_re "vdt") (str.to_re "w5Z")))) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "=") (re.union (str.to_re "M*a") (str.to_re "5<O")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "u") (re.union (str.to_re "w") (str.to_re "]l")))) (re.union (str.to_re "i.?") (re.union (str.to_re "=HY") (re.union (str.to_re "oBu") (str.to_re "Hm")))))))) ((_ re.loop 18 41) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "#J") (re.union (str.to_re "|e") (str.to_re "+l")))) (re.++ (re.union (str.to_re "_Q*") (re.union (str.to_re "w") (re.union (str.to_re "-{0") (str.to_re "I")))) (re.++ (re.union (str.to_re "m") (re.union (str.to_re "0") (re.union (str.to_re "\u00221") (str.to_re "_&7")))) (re.union (str.to_re "4") (re.union (str.to_re "Dv") (re.union (str.to_re "e") (str.to_re ">L")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 19 402) (re.++ (re.union (str.to_re "W") (re.union (str.to_re "u?d") (re.union (str.to_re "p1") (str.to_re "v#(")))) (re.++ (re.union (str.to_re "st") (re.union (str.to_re "Dp") (re.union (str.to_re "}2") (str.to_re "&f")))) (re.++ (re.union (str.to_re "(4") (re.union (str.to_re "_") (re.union (str.to_re "8`.") (str.to_re "$")))) (re.union (str.to_re "P") (re.union (str.to_re "n") (re.union (str.to_re "3(") (str.to_re "\u0022,2")))))))) (re.++ ((_ re.loop 3 995) (re.++ (re.union (str.to_re "v*") (re.union (str.to_re "%M") (re.union (str.to_re "<_") (str.to_re "h/")))) (re.++ (re.union (str.to_re "Le") (re.union (str.to_re "h*K") (re.union (str.to_re "XXq") (str.to_re "?\\")))) (re.++ (re.union (str.to_re "11$") (re.union (str.to_re ")L") (re.union (str.to_re "y") (str.to_re "+z")))) (re.union (str.to_re ",") (re.union (str.to_re "BC") (re.union (str.to_re "|}") (str.to_re "Q?")))))))) (re.++ ((_ re.loop 14 681) (re.++ (re.union (str.to_re "WBj") (re.union (str.to_re "A") (re.union (str.to_re "TR}") (str.to_re "w")))) (re.++ (re.union (str.to_re "2") (re.union (str.to_re ";8") (re.union (str.to_re "irt") (str.to_re "I")))) (re.++ (re.union (str.to_re "\\%") (re.union (str.to_re "Y4") (re.union (str.to_re "FaG") (str.to_re "t#")))) (re.union (str.to_re "F%") (re.union (str.to_re "wq.") (re.union (str.to_re "\\|Q") (str.to_re "PE")))))))) ((_ re.loop 16 833) (re.++ (re.union (str.to_re "j") (re.union (str.to_re "Q%q") (re.union (str.to_re "!5!") (str.to_re "H2t")))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re ".%") (re.union (str.to_re "2_") (str.to_re "/Gb")))) (re.++ (re.union (str.to_re "hEd") (re.union (str.to_re "+F]") (re.union (str.to_re "B") (str.to_re "[r")))) (re.union (str.to_re "'") (re.union (str.to_re "cd(") (re.union (str.to_re "!") (str.to_re "WJi"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
