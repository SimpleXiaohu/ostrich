;test regex ^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "4903") (str.to_re "4905")) (str.to_re "4911")) (str.to_re "4936")) (str.to_re "6333")) (str.to_re "6759")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "4903") (str.to_re "4905")) (str.to_re "4911")) (str.to_re "4936")) (str.to_re "6333")) (str.to_re "6759")) ((_ re.loop 14 14) (re.range "0" "9")))) (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "4903") (str.to_re "4905")) (str.to_re "4911")) (str.to_re "4936")) (str.to_re "6333")) (str.to_re "6759")) ((_ re.loop 15 15) (re.range "0" "9")))) (re.++ (str.to_re "564182") ((_ re.loop 10 10) (re.range "0" "9")))) (re.++ (str.to_re "564182") ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to_re "564182") ((_ re.loop 13 13) (re.range "0" "9")))) (re.++ (str.to_re "633110") ((_ re.loop 10 10) (re.range "0" "9")))) (re.++ (str.to_re "633110") ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (re.++ (str.to_re "633110") ((_ re.loop 13 13) (re.range "0" "9"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)