(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\\\\[\w-]+\\(([\w()-][\w\s()-]*[\w()-]+)|([\w()-]+))\$?(\\(([\w()-][\w\s()-]*[\w()-]+)|([\w()-]+)))*\\?$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{5c}") (re.union (re.++ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.opt (str.to_re "$")) (re.* (re.++ (str.to_re "\u{5c}") (re.union (re.++ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))) (re.opt (str.to_re "\u{5c}")) (str.to_re "\u{0a}")))))
; ^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.union (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to_re ",") (re.* (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; (?i:[aeiou]+)\B
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u"))) (str.to_re "\u{0a}"))))
; /\/images\/[a-zA-Z]\.php\?id\=[0-9]{2,3}(\.\d)?$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//images/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ".php?id=") ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.range "0" "9"))) (str.to_re "/Ui\u{0a}")))))
; </?[a-z][a-z0-9]*[^<>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
