;test regex .+?(?:\r\n){5}(.+(?:\r\n){4})\r\n.+(?:\r\n)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.+? (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 5 5) (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (re.++ (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 4 4) (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")))) (re.++ (str.to_re "\u{0d}") (re.++ (str.to_re "\u{0a}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.opt (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)