;test regex (class[\(es\)]*)([and|et|,|\s]*(\d{1,}))+
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.* (re.union (str.to_re "(") (re.union (str.to_re "e") (re.union (str.to_re "s") (str.to_re ")")))))))))) (re.+ (re.++ (re.* (re.union (str.to_re "a") (re.union (str.to_re "n") (re.union (str.to_re "d") (re.union (str.to_re "|") (re.union (str.to_re "e") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re ",") (re.union (str.to_re "|") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))))) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)