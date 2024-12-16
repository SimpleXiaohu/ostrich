;test regex <!--(.|\s)*(\[if .*\]){0}(.|\s)*?-->
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "!") (re.++ (str.to_re "-") (re.++ (str.to_re "-") (re.++ (re.* (re.union (re.diff re.allchar (str.to_re "\n")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ ((_ re.loop 0 0) (re.++ (str.to_re "[") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "]"))))))) (re.++ (re.* (re.union (re.diff re.allchar (str.to_re "\n")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (str.to_re "-") (re.++ (str.to_re "-") (str.to_re ">"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)