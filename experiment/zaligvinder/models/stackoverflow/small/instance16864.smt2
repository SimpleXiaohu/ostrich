;test regex (([ \n]*[0-9]){10}[ \n]*,)*([ \n]*[0-9]){10}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (re.++ ((_ re.loop 10 10) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{0a}"))) (re.range "0" "9"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{0a}")))) (str.to_re ","))) ((_ re.loop 10 10) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{0a}"))) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)