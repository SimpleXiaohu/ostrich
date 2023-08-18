;test regex (?:^|\W)Phone:(?:$|\W)\(?(?:[0-9]{2})\)?([ .-]?)([0-9]{3})\2([0-9]{4})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (str.to_re "P") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (re.union (str.to_re "") (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re ".") (str.to_re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (_ re.reference 2) ((_ re.loop 4 4) (re.range "0" "9"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)