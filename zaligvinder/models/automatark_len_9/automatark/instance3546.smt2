(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; \u{1f}\u{8b}\u{08}\u{00}.+\u{00}\u{00}
(assert (not (str.in_re X (re.++ (str.to_re "\u{1f}\u{8b}\u{08}\u{00}") (re.+ re.allchar) (str.to_re "\u{00}\u{00}\u{0a}")))))
; ^(02\d\s?\d{4}\s?\d{4})|((01|05)\d{2}\s?\d{3}\s?\d{4})|((01|05)\d{3}\s?\d{5,6})|((01|05)\d{4}\s?\d{4,5})$
(assert (str.in_re X (re.union (re.++ (str.to_re "02") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 5 6) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "1") (str.to_re "5"))))))
; User-Agent\x3A.*community\w+\u{0d}\u{0a}subject=GhostVoice
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "community") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0d}\u{0a}subject=GhostVoice\u{0a}"))))
; ^([012346789][0-9]{4})$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
(assert (> (str.len X) 9))
(check-sat)
