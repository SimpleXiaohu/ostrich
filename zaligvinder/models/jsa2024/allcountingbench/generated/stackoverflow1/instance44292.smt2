;test regex /(?:https?:\/\/)?(?:www\.)?(?:[\da-z-]+\.)+[a-z]{2,10}(?:\/[^\s/]+)*\/?\s/gi
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (re.opt (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "."))))) (re.++ (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (str.to_re "-")))) (str.to_re "."))) (re.++ ((_ re.loop 2 10) (re.range "a" "z")) (re.++ (re.* (re.++ (str.to_re "/") (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.inter (re.diff re.allchar (str.to_re "\u{0c}")) (re.diff re.allchar (str.to_re "/"))))))))))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "i")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)