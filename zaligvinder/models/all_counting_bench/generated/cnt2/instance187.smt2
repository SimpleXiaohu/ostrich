;test regex ^Accept\u{2d}Language\u{3a}[\s]*([0-9a-zA-Z_]{1,36}[\s]*(\u{2e}|\u{2d}|\u{3b}|\u{3d}|\u{2c})[\s]*)*[^\u{2d}\u{3b}\u{2c}\u{3d}\n]{37}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "A") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "\u{2d}") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{3a}") (re.++ (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.* (re.++ ((_ re.loop 1 36) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re "_"))))) (re.++ (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (re.union (str.to_re "\u{2e}") (str.to_re "\u{2d}")) (str.to_re "\u{3b}")) (str.to_re "\u{3d}")) (str.to_re "\u{2c}")) (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))))) ((_ re.loop 37 37) (re.inter (re.diff re.allchar (str.to_re "\u{2d}")) (re.inter (re.diff re.allchar (str.to_re "\u{3b}")) (re.inter (re.diff re.allchar (str.to_re "\u{2c}")) (re.inter (re.diff re.allchar (str.to_re "\u{3d}")) (re.diff re.allchar (str.to_re "\u{0a}"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)