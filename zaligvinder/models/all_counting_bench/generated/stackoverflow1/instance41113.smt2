;test regex $'^q[0-9]{1,2}[a-z]?\\.'"$fExt"'$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "") (str.to_re "\u{27}")) (re.++ (str.to_re "") (re.++ (str.to_re "q") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.opt (re.range "a" "z")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\u{27}") (str.to_re "\u{22}"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}")))))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)