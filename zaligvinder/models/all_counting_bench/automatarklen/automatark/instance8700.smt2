(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^(((GIR)\s{0,1}((0AA))))|(([A-PR-UWYZ][0-9][0-9]?)|([A-PR-UWYZ][A-HK-Y][0-9][0-9]?)|([A-PR-UWYZ][0-9][A-HJKSTUW])|([A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRVWXY]))\s{0,1}([0-9][ABD-HJLNP-UW-Z]{2})$)
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "GIR") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "0AA")) (re.++ (re.union (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.range "0" "9") (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W"))) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y")))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z"))))) (str.to_re "\u{0a}")))))
; ^(((0[13578]|10|12)([-./])(0[1-9]|[12][0-9]|3[01])([-./])(\d{4}))|((0[469]|11)([-./])([0][1-9]|[12][0-9]|30)([-./])(\d{4}))|((02)([-./])(0[1-9]|1[0-9]|2[0-8])([-./])(\d{4}))|((02)(\.|-|\/)(29)([-./])([02468][048]00))|((02)([-./])(29)([-./])([13579][26]00))|((02)([-./])(29)([-./])([0-9][0-9][0][48]))|((02)([-./])(29)([-./])([0-9][0-9][2468][048]))|((02)([-./])(29)([-./])([0-9][0-9][13579][26])))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "02") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "\u{0a}")))))
; SecureNet\s+hostiedesksearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "hostiedesksearch.dropspam.com\u{0a}"))))
; ^([a-zA-Z]+)[0-9]*\.*[a-zA-Z0-9]+$|^[a-zA-Z]+[0-9]*$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")) (re.* (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")) (str.to_re "\u{0a}"))))))
; ^\+[0-9]{1,3}\([0-9]{3}\)[0-9]{7}$
(assert (not (str.in_re X (re.++ (str.to_re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
