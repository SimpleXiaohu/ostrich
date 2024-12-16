;test regex ^(?:(\d+)[ \t]*)?(.*?)(?:[ \t](\(\w{3,4}\)))?(?:[ \t](\*))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}"))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re ")"))))) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}")) (str.to_re "*"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)