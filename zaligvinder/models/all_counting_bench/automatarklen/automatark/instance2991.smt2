(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}\s*[\d]
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "0" "9") (str.to_re "\u{0a}")))))
; /filename=[^\n]*\u{2e}xps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".xps/i\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
