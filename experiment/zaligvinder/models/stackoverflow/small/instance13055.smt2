;test regex ^update(_\\d+){3}_to(_\\d+){3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "u") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "_") (re.++ (str.to_re "\\") (re.+ (str.to_re "d"))))) (re.++ (str.to_re "_") (re.++ (str.to_re "t") (re.++ (str.to_re "o") ((_ re.loop 3 3) (re.++ (str.to_re "_") (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)