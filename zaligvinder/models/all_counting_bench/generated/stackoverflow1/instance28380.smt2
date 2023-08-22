;test regex (^|[^.])[A-Z0-9][A-Z0-9.]{0,2}[A-Z0-9]($|[^.])
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.diff re.allchar (str.to_re "."))) (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.++ ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re ".")))) (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.union (str.to_re "") (re.diff re.allchar (str.to_re ".")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)