;test regex (.{4})tvsh(.{4})data(.{8})([\u{20}-\x7F]+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "t") (re.++ (str.to_re "v") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.range "\u{20}" "\u{7f}")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)