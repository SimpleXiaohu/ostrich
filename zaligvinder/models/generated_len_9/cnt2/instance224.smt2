;test regex \x20{40}\x20\x20\x20\x20{4}\x20A{5}.{4}A{6}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 40 40) (str.to_re "\u{20}")) (re.++ (str.to_re "\u{20}") (re.++ (str.to_re "\u{20}") (re.++ (str.to_re "\u{20}") (re.++ ((_ re.loop 4 4) (str.to_re "\u{20}")) (re.++ ((_ re.loop 5 5) (str.to_re "\u{20a}")) (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 6 6) (str.to_re "A")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)