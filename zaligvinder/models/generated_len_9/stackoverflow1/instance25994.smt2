;test regex app.get('/:date(\d{2}JU[NL]\d{4})', ...);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re ":") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "J") (re.++ (str.to_re "U") (re.++ (re.union (str.to_re "N") (str.to_re "L")) ((_ re.loop 4 4) (re.range "0" "9")))))) (str.to_re "\u{27}"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))))) (str.to_re ";")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)