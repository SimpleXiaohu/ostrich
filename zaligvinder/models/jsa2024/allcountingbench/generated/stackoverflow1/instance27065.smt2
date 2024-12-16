;test regex view=\((\w+)(:)([\d,]+)((;[^)]+){0,}|;)\)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "=") (re.++ (str.to_re "(") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ":") (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (re.++ (re.union (re.++ (re.* (re.++ (str.to_re ";") (re.+ (re.diff re.allchar (str.to_re ")"))))) ((_ re.loop 0 0) (re.++ (str.to_re ";") (re.+ (re.diff re.allchar (str.to_re ")")))))) (str.to_re ";")) (str.to_re ")")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)