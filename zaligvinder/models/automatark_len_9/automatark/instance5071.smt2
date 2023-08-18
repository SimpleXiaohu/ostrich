(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Toolbar\s+pjpoptwql\u{2f}rlnjSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "pjpoptwql/rlnjSubject:\u{0a}")))))
; /STOR fp[0-9A-F]{44}\u{2e}bin/
(assert (str.in_re X (re.++ (str.to_re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re ".bin/\u{0a}"))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{0a}")))))
(assert (> (str.len X) 9))
(check-sat)
