;test regex .+?(?:_([a-z]{2,3})(?:_([A-Z]{2,3}))?)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.opt (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (re.++ (str.to_re "_") ((_ re.loop 2 3) (re.range "A" "Z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)