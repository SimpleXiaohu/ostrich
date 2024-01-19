;test regex (?:o|dp(?:\/[^/]+)?|gp\/product(?:\/[^/]+)?)\/([A-Z0-9]{10})
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "p") (re.opt (re.++ (str.to_re "/") (re.+ (re.diff re.allchar (str.to_re "/")))))))) (re.++ (str.to_re "g") (re.++ (str.to_re "p") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.opt (re.++ (str.to_re "/") (re.+ (re.diff re.allchar (str.to_re "/")))))))))))))))) (re.++ (str.to_re "/") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)