;test regex ( [0-9]{1} | [0-1]{1}[0-9]{1} | 2[0-4]{1} ) : ( [0-9]{1} | [0-5]{1}[0-9]{1} )
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re " "))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 1) (re.range "0" "1")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re "2") (re.++ ((_ re.loop 1 1) (re.range "0" "4")) (str.to_re " "))))) (re.++ (str.to_re " ") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.union (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re " "))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 1) (re.range "0" "5")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re " ")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)