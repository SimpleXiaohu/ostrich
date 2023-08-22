(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(A[A-HJ-M]|[BR][A-Y]|C[A-HJ-PR-V]|[EMOV][A-Y]|G[A-HJ-O]|[DFHKLPSWY][A-HJ-PR-Y]|MAN|N[A-EGHJ-PR-Y]|X[A-F]|)(0[02-9]|[1-9][0-9])[A-HJ-P-R-Z]{3}$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (re.range "A" "H") (re.range "J" "M"))) (re.++ (re.union (str.to_re "B") (str.to_re "R")) (re.range "A" "Y")) (re.++ (str.to_re "C") (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "V"))) (re.++ (re.union (str.to_re "E") (str.to_re "M") (str.to_re "O") (str.to_re "V")) (re.range "A" "Y")) (re.++ (str.to_re "G") (re.union (re.range "A" "H") (re.range "J" "O"))) (re.++ (re.union (str.to_re "D") (str.to_re "F") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "P") (str.to_re "S") (str.to_re "W") (str.to_re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y"))) (str.to_re "MAN") (re.++ (str.to_re "N") (re.union (re.range "A" "E") (str.to_re "G") (str.to_re "H") (re.range "J" "P") (re.range "R" "Y"))) (re.++ (str.to_re "X") (re.range "A" "F"))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "0") (re.range "2" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (str.to_re "-") (re.range "R" "Z"))) (str.to_re "\u{0a}"))))
; ^([A-Z|a-z|&]{3})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))(\w{2}[A|a|0-9]{1})$|^([A-Z|a-z]{4})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))((\w{2})([A|a|0-9]{1})){0,3}$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z") (str.to_re "&"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
; User-Agent\x3A\d+wjpropqmlpohj\u{2f}lo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "media.dxcdirect.com\u{0a}"))))
; Host\x3A[^\n\r]*adblock\x2Elinkz\x2Ecom[^\n\r]*HTTPfromtoADWindowsstep
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "adblock.linkz.com") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "HTTPfromtoADWindowsstep\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
