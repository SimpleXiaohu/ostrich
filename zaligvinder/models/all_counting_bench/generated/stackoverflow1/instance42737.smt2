;test regex [c|C]:[^.]+[.][A-Za-z]{3}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "c") (re.union (str.to_re "|") (str.to_re "C"))) (re.++ (str.to_re ":") (re.++ (re.+ (re.diff re.allchar (str.to_re "."))) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)