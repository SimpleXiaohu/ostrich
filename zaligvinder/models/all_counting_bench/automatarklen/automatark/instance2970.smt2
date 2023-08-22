(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".jar/U\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
