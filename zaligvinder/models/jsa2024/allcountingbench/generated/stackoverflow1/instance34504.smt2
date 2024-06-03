;test regex ^[A-Z].{6}|.{5}\d{2}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.range "A" "Z") ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))))) (re.++ (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)