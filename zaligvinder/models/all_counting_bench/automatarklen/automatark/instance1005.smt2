(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[0-9]{6}
(assert (not (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; (\s*\(?0\d{4}\)?\s*\d{6}\s*)|(\s*\(?0\d{3}\)?\s*\d{3}\s*\d{4}\s*)
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "(")) (str.to_re "0") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (re.++ (str.to_re "\u{0a}") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "(")) (str.to_re "0") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))))
; ^[0-9]{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)