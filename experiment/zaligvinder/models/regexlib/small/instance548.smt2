;test regex (?:https?://|www\.)[\d.A-Za-z-]+\.[A-Za-z]{2,6}/?
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))))) (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "."))))) (re.++ (re.+ (re.union (re.range "0" "9") (re.union (str.to_re ".") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re "-")))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re "/"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)