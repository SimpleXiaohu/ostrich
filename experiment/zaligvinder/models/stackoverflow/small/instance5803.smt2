;test regex /^h?t?t?p?s?:?\/?\/?w?w?w?\.?(.*\.[A-Z]{2,})+[A-Z\/]/i
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "h")) (re.++ (re.opt (str.to_re "t")) (re.++ (re.opt (str.to_re "t")) (re.++ (re.opt (str.to_re "p")) (re.++ (re.opt (str.to_re "s")) (re.++ (re.opt (str.to_re ":")) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (str.to_re "w")) (re.++ (re.opt (str.to_re "w")) (re.++ (re.opt (str.to_re "w")) (re.++ (re.opt (str.to_re ".")) (re.++ (re.+ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "A" "Z")))))) (re.++ (re.union (re.range "A" "Z") (str.to_re "/")) (re.++ (str.to_re "/") (str.to_re "i"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)