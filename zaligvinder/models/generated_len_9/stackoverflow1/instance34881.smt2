;test regex [NESWUD]{1}[ew]?
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "N") (re.union (str.to_re "E") (re.union (str.to_re "S") (re.union (str.to_re "W") (re.union (str.to_re "U") (str.to_re "D"))))))) (re.opt (re.union (str.to_re "e") (str.to_re "w"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)