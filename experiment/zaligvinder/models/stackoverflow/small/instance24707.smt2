;test regex /\A(?:[a-z_]\w*[?!=]?|\[\]=?|<<|>>|\*\*|[!~+\*\/%&^|-]|[<>]=?|<=>|={2,3}|![=~]|=~)\z/i
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "A") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.union (re.range "a" "z") (str.to_re "_")) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.opt (re.union (str.to_re "?") (re.union (str.to_re "!") (str.to_re "=")))))) (re.++ (str.to_re "[") (re.++ (str.to_re "]") (re.opt (str.to_re "="))))) (re.++ (str.to_re "<") (str.to_re "<"))) (re.++ (str.to_re ">") (str.to_re ">"))) (re.++ (str.to_re "*") (str.to_re "*"))) (re.union (str.to_re "!") (re.union (str.to_re "~") (re.union (str.to_re "+") (re.union (str.to_re "*") (re.union (str.to_re "/") (re.union (str.to_re "%") (re.union (str.to_re "&") (re.union (str.to_re "^") (re.union (str.to_re "|") (str.to_re "-"))))))))))) (re.++ (re.union (str.to_re "<") (str.to_re ">")) (re.opt (str.to_re "=")))) (re.++ (str.to_re "<") (re.++ (str.to_re "=") (str.to_re ">")))) ((_ re.loop 2 3) (str.to_re "="))) (re.++ (str.to_re "!") (re.union (str.to_re "=") (str.to_re "~")))) (re.++ (str.to_re "=") (str.to_re "~"))) (re.++ (str.to_re "z") (re.++ (str.to_re "/") (str.to_re "i"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)