;test regex mfcisapicommand=[^&\r\n\x20]{250}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "m") (re.++ (str.to_re "f") (re.++ (str.to_re "c") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "=") ((_ re.loop 250 250) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.diff re.allchar (str.to_re "\u{20}"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)