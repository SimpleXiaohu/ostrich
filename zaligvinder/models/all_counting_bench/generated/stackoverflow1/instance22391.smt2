;test regex ^ {4}:::[ \t]*(\w+)[ \t]*\n((?: {4}[^\n]*\n)*)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (str.to_re " ")) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}"))) (re.++ (str.to_re "\u{0a}") (re.* (re.++ ((_ re.loop 4 4) (str.to_re " ")) (re.++ (re.* (re.diff re.allchar (str.to_re "\u{0a}"))) (str.to_re "\u{0a}")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)