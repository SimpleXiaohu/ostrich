;test regex (blah){4}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 4 4) (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "h")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)