;test regex (?:^|\|(Mon|Tue|Wed|Thu|Fri|Sat|Sun)=)(\d{2}:\d{2}(?::\d{2})?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.++ (str.to_re "|") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "M") (re.++ (str.to_re "o") (str.to_re "n"))) (re.++ (str.to_re "T") (re.++ (str.to_re "u") (str.to_re "e")))) (re.++ (str.to_re "W") (re.++ (str.to_re "e") (str.to_re "d")))) (re.++ (str.to_re "T") (re.++ (str.to_re "h") (str.to_re "u")))) (re.++ (str.to_re "F") (re.++ (str.to_re "r") (str.to_re "i")))) (re.++ (str.to_re "S") (re.++ (str.to_re "a") (str.to_re "t")))) (re.++ (str.to_re "S") (re.++ (str.to_re "u") (str.to_re "n")))) (str.to_re "=")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)