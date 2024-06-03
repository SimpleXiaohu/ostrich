(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(00[1-9]|0[1-9][0-9]|[1-7][0-9][0-9]|7[0-7][0-2]|77[0-2])(\d{6})(A|B([1-9]?|[ADGHJKLNPQRTWY])|C([1-9]|[A-Z])|D([1-9]?|[ACDGHJKLMNPQRSTVWXYZ])|E([1-9]?|[ABCDFGHJKM])|F([1-8])|J([1-4])|K([1-9]|[ABCDEFGHJLM])|T([ABCDEFGHJKLMNPQRSTUVWXYZ2]?)|M|W([1-9]?|[BCFGJRT]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "00") (re.range "1" "9")) (re.++ (str.to_re "0") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "7") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "7") (re.range "0" "7") (re.range "0" "2")) (re.++ (str.to_re "77") (re.range "0" "2"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (str.to_re "A") (re.++ (str.to_re "B") (re.union (re.opt (re.range "1" "9")) (str.to_re "A") (str.to_re "D") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "C") (re.union (re.range "1" "9") (re.range "A" "Z"))) (re.++ (str.to_re "D") (re.union (re.opt (re.range "1" "9")) (str.to_re "A") (str.to_re "C") (str.to_re "D") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "E") (re.union (re.opt (re.range "1" "9")) (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "M"))) (re.++ (str.to_re "F") (re.range "1" "8")) (re.++ (str.to_re "J") (re.range "1" "4")) (re.++ (str.to_re "K") (re.union (re.range "1" "9") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "L") (str.to_re "M"))) (re.++ (str.to_re "T") (re.opt (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z") (str.to_re "2")))) (str.to_re "M") (re.++ (str.to_re "W") (re.union (re.opt (re.range "1" "9")) (str.to_re "B") (str.to_re "C") (str.to_re "F") (str.to_re "G") (str.to_re "J") (str.to_re "R") (str.to_re "T")))) (str.to_re "\u{0a}"))))
; /filename=[^\n]*\u{2e}vsd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".vsd/i\u{0a}")))))
; \b((J(AN|UN|UL))|FEB|MAR|(A(PR|UG))|MAY|SEP|NOV|DEC|OCT)\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(0[0-9])\b
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "AN") (str.to_re "UN") (str.to_re "UL"))) (str.to_re "FEB") (str.to_re "MAR") (re.++ (str.to_re "A") (re.union (str.to_re "PR") (str.to_re "UG"))) (str.to_re "MAY") (str.to_re "SEP") (str.to_re "NOV") (str.to_re "DEC") (str.to_re "OCT")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}0") (re.range "0" "9")))))
; \w*
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
