;test regex \\G.{1,80}(\\s+|$)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "G") (re.++ ((_ re.loop 1 80) (re.diff re.allchar (str.to_re "\n"))) (re.union (re.++ (str.to_re "\\") (re.+ (str.to_re "s"))) (str.to_re "")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)