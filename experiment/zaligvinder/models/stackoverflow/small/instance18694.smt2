;test regex ^[:space:]*public[:space:]{1}(partial[:space:])*class
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.union (str.to_re ":") (re.union (str.to_re "s") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "e") (str.to_re ":")))))))) (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ ((_ re.loop 1 1) (re.union (str.to_re ":") (re.union (str.to_re "s") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "e") (str.to_re ":")))))))) (re.++ (re.* (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.union (str.to_re ":") (re.union (str.to_re "s") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "e") (str.to_re ":"))))))))))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "s")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)