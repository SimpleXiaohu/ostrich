;test regex ^((ht|f)tp(s?))\://([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(/\S*)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.union (re.++ (str.to_re "h") (str.to_re "t")) (str.to_re "f")) (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s"))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re "-"))))) (str.to_re "."))) (re.++ ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.* (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)