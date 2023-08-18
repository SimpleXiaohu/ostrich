(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; User-Agent\x3A\s+community\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "\u{0a}"))))
; ^(\d{4},?)+$
(assert (str.in_re X (re.++ (re.+ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re ",")))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
