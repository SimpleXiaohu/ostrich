;test regex ^(?: *)(\d{4})(?: +)(\d{4})(?: +)(\d{4})  # with multiline flag
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (str.to_re " ")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "g"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)