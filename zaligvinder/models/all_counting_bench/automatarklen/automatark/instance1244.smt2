(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename\=[a-z0-9]{24}\.exe/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/H\u{0a}"))))
; (([\n,  ])*((<+)([^<>]+)(>*))+([\n,  ])*)+
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.* (re.union (str.to_re "\u{0a}") (str.to_re ",") (str.to_re " "))) (re.+ (re.++ (re.+ (str.to_re "<")) (re.+ (re.union (str.to_re "<") (str.to_re ">"))) (re.* (str.to_re ">")))) (re.* (re.union (str.to_re "\u{0a}") (str.to_re ",") (str.to_re " "))))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
