;test regex ((8|\+7)-?)\W((\d{3,5})|\(?\d{3,5}\))\W\d{3}\W((\d{2}\W\d{2})|(\d{4}))|(((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.union (str.to_re "8") (re.++ (str.to_re "+") (str.to_re "7"))) (re.opt (str.to_re "-"))) (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (re.++ (re.union ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re ")")))) (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 4 4) (re.range "0" "9"))))))))) (re.++ (re.opt (re.++ (re.union (str.to_re "8") (re.++ (str.to_re "+") (str.to_re "7"))) (re.opt (str.to_re "-")))) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)