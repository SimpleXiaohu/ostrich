;test regex ^([1-9]{1}|[1-9]{1}[0-9]{1,3}|[1-5]{1}[0-9]{4}|6[0-4]{1}[0-9]{3}|65[0-4]{1}[0-9]{2}|655[0-2]{1}[0-9]{1}|6553[0-6]{1})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 3) (re.range "0" "9")))) (re.++ ((_ re.loop 1 1) (re.range "1" "5")) ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (str.to_re "6") (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "65") (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "655") (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to_re "6553") ((_ re.loop 1 1) (re.range "0" "6"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)