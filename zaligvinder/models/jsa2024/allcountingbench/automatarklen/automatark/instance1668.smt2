(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}\s*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "%") (str.to_re "-"))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "_") (str.to_re "%") (str.to_re "-"))) (str.to_re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}")))))
; ^\s*(((\d*\.?\d*[0-9]+\d*)|([0-9]+\d*\.\d*) )\s*[xX]\s*){2}((\d*\.?\d*[0-9]+\d*)|([0-9]+\d*\.\d*))\s*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.++ (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "x") (str.to_re "X")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}")))))
; ^[-\w`~!@#$%^&*\(\)+={}|\[\]\\:";'<>?,.\/ ]*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "-") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "^") (str.to_re "&") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "=") (str.to_re "{") (str.to_re "}") (str.to_re "|") (str.to_re "[") (str.to_re "]") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "\u{22}") (str.to_re ";") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "?") (str.to_re ",") (str.to_re ".") (str.to_re "/") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}"))))
; /\u{2e}xps([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.xps") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
; Cookie\x3A\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in_re X (str.to_re "Cookie:/images/nocache/tr/gca/m.gif?\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
