;test regex ("?[^"]+"?){1,6}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 6) (re.++ (re.opt (str.to_re "\u{22}")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\u{22}"))) (re.opt (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)