;test regex w3who.dll\x3F[^\r\n]{519}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "w") (re.++ (str.to_re "3") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "d") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "\u{3f}") ((_ re.loop 519 519) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{0a}"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)