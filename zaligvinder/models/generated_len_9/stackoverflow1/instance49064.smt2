;test regex ^(ATC02007)([0-9]{14})((?:[^.]*)?\\.xls)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "C") (str.to_re "02007")))) (re.++ ((_ re.loop 14 14) (re.range "0" "9")) (re.++ (re.opt (re.* (re.diff re.allchar (str.to_re ".")))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "x") (re.++ (str.to_re "l") (str.to_re "s"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)