;test regex """(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})(\D{1,6})(\[.+?\]) (".+?") (\d{1,3})"""
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))))))) (re.++ ((_ re.loop 1 6) (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.++ (str.to_re "[") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "]"))) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}"))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)