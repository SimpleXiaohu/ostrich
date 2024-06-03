(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([-+]?(\d+\.?\d*|\d*\.?\d+)([Ee][-+]?[0-2]?\d{1,2})?[r]?|[-+]?((\d+\.?\d*|\d*\.?\d+)([Ee][-+]?[0-2]?\d{1,2})?)?[i]|[-+]?(\d+\.?\d*|\d*\.?\d+)([Ee][-+]?[0-2]?\d{1,2})?[r]?[-+]((\d+\.?\d*|\d*\.?\d+)([Ee][-+]?[0-2]?\d{1,2})?)?[i])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.range "0" "2")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "r"))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.range "0" "2")) ((_ re.loop 1 2) (re.range "0" "9")))))) (str.to_re "i")) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.range "0" "2")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "r")) (re.union (str.to_re "-") (str.to_re "+")) (re.opt (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.opt (re.range "0" "2")) ((_ re.loop 1 2) (re.range "0" "9")))))) (str.to_re "i"))) (str.to_re "\u{0a}")))))
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.swf$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ".swf/Ui\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
