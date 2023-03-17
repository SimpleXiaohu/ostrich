;test regex ((\+?\d{1,4}[ \t\f\-\.](\d[ \t\f\-\.])?)?(\(\d{1,4}([\s-]\d{1,4})?\)[\.\- \t\f])?((\d{2,6}[\.\- \t\f])+\d{2,6})|(\d{6,16})([;,\.]{1,3}\d{3,}#?)?)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0c}") (re.union (str.to_re "-") (str.to_re "."))))) (re.opt (re.++ (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0c}") (re.union (str.to_re "-") (str.to_re "."))))))))))) (re.++ (re.opt (re.++ (str.to_re "(") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (re.opt (re.++ (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-")) ((_ re.loop 1 4) (re.range "0" "9")))) (re.++ (str.to_re ")") (re.union (str.to_re ".") (re.union (str.to_re "-") (re.union (str.to_re " ") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.+ (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (re.union (str.to_re ".") (re.union (str.to_re "-") (re.union (str.to_re " ") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 2 6) (re.range "0" "9"))))) (re.++ ((_ re.loop 6 16) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 3) (re.union (str.to_re ";") (re.union (str.to_re ",") (str.to_re ".")))) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (str.to_re "#")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)