;test regex ^((?:[^\t]*\t[^\t]*){1,58})[\r\n]+
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 58) (re.++ (re.* (re.diff re.allchar (str.to_re "\u{09}"))) (re.++ (str.to_re "\u{09}") (re.* (re.diff re.allchar (str.to_re "\u{09}")))))) (re.+ (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)