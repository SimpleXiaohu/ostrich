(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ([^,0-9]\D*)([0-9]*|\d*\,\d*)$
(assert (not (str.in_re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to_re ",") (re.* (re.range "0" "9")))) (str.to_re "\u{0a}") (re.union (str.to_re ",") (re.range "0" "9")) (re.* (re.comp (re.range "0" "9")))))))
; ^\([0-9]{3}\)\s?[0-9]{3}(-|\s)?[0-9]{4}$|^[0-9]{3}-?[0-9]{3}-?[0-9]{4}$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))))
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (not (str.in_re X (re.++ (str.to_re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "/U\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)