;test regex ^[HN|hn]{2}|[MY|my]{2}[0-9]{8}
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") ((_ re.loop 2 2) (re.union (str.to_re "H") (re.union (str.to_re "N") (re.union (str.to_re "|") (re.union (str.to_re "h") (str.to_re "n"))))))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "M") (re.union (str.to_re "Y") (re.union (str.to_re "|") (re.union (str.to_re "m") (str.to_re "y")))))) ((_ re.loop 8 8) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)