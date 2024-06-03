;test regex ^[0-9]{1,2}\.(?:mp4|mpg|avi)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re "4"))) (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re "g")))) (re.++ (str.to_re "a") (re.++ (str.to_re "v") (str.to_re "i"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)