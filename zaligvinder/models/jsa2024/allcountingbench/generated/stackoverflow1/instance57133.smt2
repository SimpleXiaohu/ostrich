;test regex ^([$]([0-9]([0-9,])*)(\.\d{2})?|([0-9]([0-9,]))(\.\d{2})?([pcm]|bn| [mb]illion))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "$") (re.++ (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to_re ",")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (re.++ (re.range "0" "9") (re.union (re.range "0" "9") (str.to_re ","))) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.union (re.union (str.to_re "p") (re.union (str.to_re "c") (str.to_re "m"))) (re.++ (str.to_re "b") (str.to_re "n"))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "m") (str.to_re "b")) (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)