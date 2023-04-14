(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\/[a-f0-9]{32}\/\d{10}\/[a-f0-9]{32}\/\d{10}\.tpl$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re ".tpl/U\u{0a}"))))
; bind\w+Owner\x3A\dBetaWordixqshv\u{2f}qzccs
(assert (not (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{0a}")))))
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{0a}"))))
; (^|\s|\()((([1-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-]((2[0-9]){1}|(3[01]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:])|(^|\s|\()((([0-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-](([11-31]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:|$|\>])){1}){1}){1}){1}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.++ (str.to_re "2") (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.union (str.to_re "1") (re.range "1" "3"))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re "$") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}")))))
; User-Agent\x3AX-Mailer\u{3a}HWAEHost\x3AHost\x3AHost\u{3a}StableUser-Agent\x3AUser-Agent\x3Awww\u{2e}navisearch\u{2e}net
(assert (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\u{0a}")))
(check-sat)