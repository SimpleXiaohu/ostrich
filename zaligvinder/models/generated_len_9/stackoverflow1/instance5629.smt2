;test regex i.*?i|o(?:.*?o){2}|u(?:.*?u){3}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "i") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (str.to_re "i"))) (re.++ (str.to_re "o") ((_ re.loop 2 2) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (str.to_re "o"))))) (re.++ (str.to_re "u") ((_ re.loop 3 3) (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (str.to_re "u")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)