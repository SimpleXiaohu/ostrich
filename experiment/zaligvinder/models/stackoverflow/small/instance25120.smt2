;test regex (^|\n)(.*)([\n\r]+)(_{3,})([\n\r]|$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (str.to_re "\u{0a}")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (re.++ (re.++ (re.* (str.to_re "_")) ((_ re.loop 3 3) (str.to_re "_"))) (re.union (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}")) (str.to_re ""))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)