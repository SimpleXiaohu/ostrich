(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^\u{2f}[0-9]{4,10}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 10) (re.range "0" "9")) (str.to_re "/Ui\u{0a}")))))
; /^UPDATE\|[0-9]\.[0-9]\.[0-9]\|[A-F0-9]{48}\|{3}$/
(assert (not (str.in_re X (re.++ (str.to_re "/UPDATE|") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "|") ((_ re.loop 48 48) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (str.to_re "|")) (str.to_re "/\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)