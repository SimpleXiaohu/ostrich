;test regex (?:(?:(?:[^*"]*)(?:"[^"]*")*)*(\*)){5}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 5 5) (re.++ (re.* (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "*")) (re.diff re.allchar (str.to_re "\u{22}")))) (re.* (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\u{22}"))) (str.to_re "\u{22}")))))) (str.to_re "*")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)