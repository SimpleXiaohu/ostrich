;test regex var RE_DATE = /^[0-12]{2}[/][0-31]{2}[/][2010-2020]{4}$/;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/"))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.range "0" "12")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "0" "31")) (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.range "2010" "2020")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)