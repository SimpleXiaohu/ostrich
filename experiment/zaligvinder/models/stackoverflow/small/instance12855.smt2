;test regex ^!!([0-9]{5}) +.*? +M([0-9]{3})([0-9]{3})([A-Z]{3})([A-Z]{3}) +([A-Z])[0-9]{3}([0-9]{4})([0-9]{2})([0-9]{2})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "!") (re.++ (str.to_re "!") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.+ (str.to_re " ")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (str.to_re " ")) (re.++ (str.to_re "M") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (re.+ (str.to_re " ")) (re.++ (re.range "A" "Z") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)