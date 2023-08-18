(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /Referer\u{3a}\u{20}[^\s]*\u{3a}8000\u{2f}[a-z]+\?[a-z]+=\d{6,7}\u{0d}\u{0a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ":8000/") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{0d}\u{0a}/H\u{0a}")))))
; /\u{2e}swf([\u{3f}\u{2f}]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.swf") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{0a}")))))
; /filename=[^\n]*\u{2e}zip/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".zip/i\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
