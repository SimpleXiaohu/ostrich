(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[\d]{5}[-\s]{1}[\d]{3}[-\s]{1}[\d]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; From\x3A\w+SoftActivity\d+
(assert (str.in_re X (re.++ (str.to_re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}") (re.+ (re.range "0" "9")) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
