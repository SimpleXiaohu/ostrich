(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((([1][1-2]|[0][1|3|5|7|8])[-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9]|[3][0-1])[-|\\|\/|\.]([1][9][0-9][2|4|8]|[2][0][0][2|4|8]|[2][0][1][2])|[0][2][-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9])[-|\\|\/|\.]([1][9][0-9][2|4|8]|[2][0][0][2|4|8]|[2][0][1][2])|([1][1]|[0][4|6|9])[-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9]|[3][0])[-|\\|\/|\.]([1][9][0-9][2|4|8]|[2][0][0][2|4|8]|[2][0][1][2]))|(([1][1-2]|[0][1|3|5|7|8])[-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9]|[3][0-1])[-|\\|\/|\.]([1][9][0-9][0|1|3|5|6|7|9]|[2][0][0][0|1|3|5|6|7|9]|[2][0][1][0|1|3])|[0][2][-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9])[-|\\|\/|\.]([1][9][0-9][0|1|3|5|6|7|9]|[2][0][0][0|1|3|5|6|7|9]|[2][0][1][0|1|3])|([1][1]|[0][4|6|9])[-|\\|\/|\.]([0][1-9]|[1][0-9]|[2][0-9]|[3][0])[-|\\|\/|\.]([1][9][0-9][0|1|3|5|6|7|9]|[2][0][0][0|1|3|5|6|7|9]|[2][0][1][0|1|3])))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "1" "2")) (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "|") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "200") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (str.to_re "2012"))) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "200") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (str.to_re "2012"))) (re.++ (re.union (str.to_re "11") (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "|") (str.to_re "6") (str.to_re "9")))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "200") (re.union (str.to_re "2") (str.to_re "|") (str.to_re "4") (str.to_re "8"))) (str.to_re "2012"))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "1" "2")) (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "|") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "200") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "201") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3"))))) (re.++ (str.to_re "02") (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "200") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "201") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3"))))) (re.++ (re.union (str.to_re "11") (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "|") (str.to_re "6") (str.to_re "9")))) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ".")) (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "200") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (str.to_re "201") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "3")))))) (str.to_re "\u{0a}"))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (not (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{0a}")))))
; /^\/info\.php\?act\u{3d}(list|online)/U
(assert (not (str.in_re X (re.++ (str.to_re "//info.php?act=") (re.union (str.to_re "list") (str.to_re "online")) (str.to_re "/U\u{0a}")))))
; ^(\$)?(([1-9]\d{0,2}(\,\d{3})*)|([1-9]\d*)|(0))(\.\d{2})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to_re "0")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{0a}"))))
(check-sat)