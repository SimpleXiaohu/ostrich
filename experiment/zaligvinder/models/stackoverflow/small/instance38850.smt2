;test regex v[\d]\.[\d]+_ABC [\w\-]+ v\d{2}\.\d - [\w\d\-, \(\)]+ \d{4}_[A-Z]{4}_20\d{2}-[01]\d-[0-3]\d\.zip
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "v") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.++ (str.to_re " ") (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ",") (re.union (str.to_re " ") (re.union (str.to_re "(") (str.to_re ")")))))))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.++ (str.to_re "_") (re.++ (str.to_re "20") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "01") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "0" "3") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p"))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)