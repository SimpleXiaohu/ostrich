;test regex ^http.+([A-Z0-9]{13})_[0-9]{13}_([0-9]{13})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 13 13) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re "_") (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (re.++ (str.to_re "_") ((_ re.loop 13 13) (re.range "0" "9"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)