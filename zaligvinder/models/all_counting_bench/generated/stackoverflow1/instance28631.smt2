;test regex \v(^#{1}.+)(.*\n)*(^#{1}\w+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{0B}") (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (str.to_re "#")) (re.+ (re.diff re.allchar (str.to_re "\n"))))) (re.++ (re.* (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{0a}"))) (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (str.to_re "#")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)