;test regex ^.*?(\[Error\]).*?\.((?:[a-z]+\.){2}[a-z]+\(\))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "[") (re.++ (str.to_re "E") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "]"))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 2) (re.++ (re.+ (re.range "a" "z")) (str.to_re "."))) (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "(") (str.to_re ")")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)