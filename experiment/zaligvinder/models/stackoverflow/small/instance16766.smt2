;test regex ^([A-Z0-9]{2}+)([A-Z]{4}+)([0-9]{1,6}+)([ ]{0,5}+)([A-Z]{1,4}+).*"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.+ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.+ ((_ re.loop 4 4) (re.range "A" "Z"))) (re.++ (re.+ ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.+ ((_ re.loop 0 5) (str.to_re " "))) (re.++ (re.+ ((_ re.loop 1 4) (re.range "A" "Z"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)