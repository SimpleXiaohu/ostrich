;test regex (^(([+]?((([0-9\u0660-\u0669]+)([\,\.\-]?[\s]?))+))+){4,255}$)|(^[ ]{0,255}$)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") ((_ re.loop 4 255) (re.+ (re.++ (re.opt (str.to_re "+")) (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.range "\u{0660}" "\u{0669}"))) (re.++ (re.opt (re.union (str.to_re ",") (re.union (str.to_re ".") (str.to_re "-")))) (re.opt (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 0 255) (str.to_re " "))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)