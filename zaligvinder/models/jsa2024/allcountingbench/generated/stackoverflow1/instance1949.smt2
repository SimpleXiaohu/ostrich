;test regex (On\s.*<\n){0,1}(.*\n(\n){0,1}((^>+\s?.*$)+\n?)+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "O") (re.++ (str.to_re "n") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (str.to_re "\u{0a}"))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ ((_ re.loop 0 1) (str.to_re "\u{0a}")) (re.+ (re.++ (re.+ (re.++ (re.++ (str.to_re "") (re.++ (re.+ (str.to_re ">")) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))) (str.to_re ""))) (re.opt (str.to_re "\u{0a}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)