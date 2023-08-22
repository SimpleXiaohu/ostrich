;test regex grep -Po '(?:[0-9]{1,3}\.){3}[0-9]{1,3}' log
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "P") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "g")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)