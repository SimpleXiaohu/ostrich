(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\s*([A-Za-z]{2,4}\.?\s*)?(['\-A-Za-z]+\s*){1,2}([A-Za-z]+\.?\s*)?(['\-A-Za-z]+\s*){1,2}(([jJsSrR]{2}\.)|([XIV]{1,6}))?\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) ((_ re.loop 1 2) (re.++ (re.+ (re.union (str.to_re "'") (str.to_re "-") (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) ((_ re.loop 1 2) (re.++ (re.+ (re.union (str.to_re "'") (str.to_re "-") (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.union (re.++ ((_ re.loop 2 2) (re.union (str.to_re "j") (str.to_re "J") (str.to_re "s") (str.to_re "S") (str.to_re "r") (str.to_re "R"))) (str.to_re ".")) ((_ re.loop 1 6) (re.union (str.to_re "X") (str.to_re "I") (str.to_re "V"))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
