;test regex Monovolume\/.+(\d{7,})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "M") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "/") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)