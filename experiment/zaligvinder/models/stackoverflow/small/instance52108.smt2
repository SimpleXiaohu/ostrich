;test regex (?:\\G|^)[^.]+?\\b([A-Z]{1,3})\\b
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "\\") (str.to_re "G")) (str.to_re "")) (re.++ (re.+ (re.diff re.allchar (str.to_re "."))) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) (re.++ (str.to_re "\\") (str.to_re "b")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)