;test regex grep -v '#{3}|:{4}' "$file"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") ((_ re.loop 3 3) (str.to_re "#"))))))))))) (re.++ (re.++ ((_ re.loop 4 4) (str.to_re ":")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re "\u{22}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)