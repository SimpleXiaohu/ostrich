;test regex (^\-|\+)?([1-9]{1}[0-9]{0,2}(\,\d{3})*|[1-9]{1}\d{0,})$|^0?$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.opt (re.union (re.++ (str.to_re "") (str.to_re "-")) (str.to_re "+"))) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 0 0) (re.range "0" "9")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.opt (str.to_re "0"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)