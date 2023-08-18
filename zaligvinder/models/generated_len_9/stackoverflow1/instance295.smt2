;test regex ^\\+([0-9]){1,3}\\.([0-9]\\ ?){6,14}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (str.to_re "\\")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 6 14) (re.++ (re.range "0" "9") (re.++ (str.to_re "\\") (re.opt (str.to_re " ")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)