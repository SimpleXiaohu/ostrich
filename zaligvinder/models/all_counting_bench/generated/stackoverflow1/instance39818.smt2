;test regex ((?:[-+]?)(?:[0-9]+)(?:.{1})(?:[0-9]+)(?:[eE]?[+-]?[0-9]+)?)([^f]?,|$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.++ (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re "e") (str.to_re "E"))) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9"))))))))) (re.union (re.++ (re.opt (re.diff re.allchar (str.to_re "f"))) (str.to_re ",")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)