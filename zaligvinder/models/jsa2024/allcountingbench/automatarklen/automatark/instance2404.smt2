(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Stealth\x2EphpSpyAgentHost\x3AIterenetUser-Agent\x3AHost\x3AHost\x3Aorigin\x3Dsidefind
(assert (not (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{0a}"))))
; ^(b|B)(f|F)(p|P)(o|O)(\s|\sC/O\s)[0-9]{1,4}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "b") (str.to_re "B")) (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "o") (str.to_re "O")) ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "\u{0a}") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "C/O") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))
; &
(assert (str.in_re X (str.to_re "&\u{0a}")))
; /filename=[^\n]*\u{2e}xm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".xm/i\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)