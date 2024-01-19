;test regex ^\d{1,2}((,)|(,25)|(,50)|(,5)|(,75)|(,0)|(,00))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re ",") (re.++ (str.to_re ",") (str.to_re "25"))) (re.++ (str.to_re ",") (str.to_re "50"))) (re.++ (str.to_re ",") (str.to_re "5"))) (re.++ (str.to_re ",") (str.to_re "75"))) (re.++ (str.to_re ",") (str.to_re "0"))) (re.++ (str.to_re ",") (str.to_re "00")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)