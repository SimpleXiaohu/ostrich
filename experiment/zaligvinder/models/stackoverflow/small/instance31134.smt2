;test regex ^(?:[^;]{0,5};){1,4}(?:[^;]{0,5};?)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 0 5) (re.diff re.allchar (str.to_re ";"))) (str.to_re ";"))) (re.opt (re.++ ((_ re.loop 0 5) (re.diff re.allchar (str.to_re ";"))) (re.opt (str.to_re ";")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)