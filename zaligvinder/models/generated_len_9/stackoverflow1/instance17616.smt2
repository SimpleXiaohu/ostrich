;test regex \(([A-Z]{1}[a-z]+)\W+([0-9]{2})\W+([0-9]{4})\)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "(") (re.++ (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))) (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re ")")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)