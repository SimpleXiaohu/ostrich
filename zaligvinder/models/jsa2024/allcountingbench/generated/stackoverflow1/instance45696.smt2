;test regex ^[a]{1}[b]{1}[abc|cab|bca|acb|ac|ca|ab|bc|cb][b]{1}[a]{1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (str.to_re "a")) (re.++ ((_ re.loop 1 1) (str.to_re "b")) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re "c") (re.union (str.to_re "a") (re.union (str.to_re "|") (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "|") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "|") (re.union (str.to_re "c") (str.to_re "b")))))))))))))))))))))))))))))) (re.++ ((_ re.loop 1 1) (str.to_re "b")) ((_ re.loop 1 1) (str.to_re "a"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)