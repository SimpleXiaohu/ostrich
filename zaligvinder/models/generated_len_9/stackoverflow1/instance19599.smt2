;test regex a(.{8})x@gmail\.com
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "x") (re.++ (str.to_re "@") (re.++ (str.to_re "g") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)