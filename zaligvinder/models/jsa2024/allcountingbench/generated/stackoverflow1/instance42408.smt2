;test regex [a-zA-Z()]+\|\|[a-zA-Z]+\|[a-zA-z]+\|[a-zA-Z0-9]+\|[a-zA-Z]+\|[0-9]+\|\|\|\|[a-zA-Z]+\|[a-zA-Z]+\|\d+(\.\d{1,2})\|[a-zA-Z]+\|\d+\|\d+\|\d+\|[0-9]+\.[0-9]+\.[0-9]+\|[0-9]+\.[0-9]+\.[0-9]+\|\w+
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (str.to_re "(") (str.to_re ")"))))) (re.++ (str.to_re "|") (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.++ (str.to_re "|") (re.++ (str.to_re "|") (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)