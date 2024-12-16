;test regex ^([a-z]{3}).*?([aeiou]|(?:.$))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "a" "z")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "i") (re.union (str.to_re "o") (str.to_re "u"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re ""))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)