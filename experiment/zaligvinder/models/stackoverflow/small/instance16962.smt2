;test regex ls | grep -E '^([^7]*7){3}[^7]*$'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re " "))) (re.++ (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (re.* (re.diff re.allchar (str.to_re "7"))) (str.to_re "7"))) (re.* (re.diff re.allchar (str.to_re "7")))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)