(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^|\s|\()((([1-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-]((2[0-9]){1}|(3[01]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:])|(^|\s|\()((([0-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-](([11-31]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:|$|\>])){1}){1}){1}){1}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.++ (str.to_re "2") (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.union (str.to_re "1") (re.range "1" "3"))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re "$") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}")))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "spyblini.inidata.warezclient.com\u{0a}")))))
; (23:59:59)|([01]{1}[0-9]|2[0-3]):((00)|(15)|(30)|(45))+:(00)
(assert (str.in_re X (re.union (str.to_re "23:59:59") (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.+ (re.union (str.to_re "00") (str.to_re "15") (str.to_re "30") (str.to_re "45"))) (str.to_re ":00\u{0a}")))))
; /\u{2f}Type\u{2f}XRef\u{2f}W\u{5b}[^\u{5d}]*?\d{7,15}/smi
(assert (str.in_re X (re.++ (str.to_re "//Type/XRef/W[") (re.* (re.comp (str.to_re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to_re "/smi\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
