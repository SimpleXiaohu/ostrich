;test regex ^(("[\w-\s]+")|([\w-]+(?:[.+][\w-]+)*)|("[\w-\s]+")([\w-]+(?:[.+][\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "-") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (str.to_re "\u{22}"))) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.* (re.++ (re.union (str.to_re ".") (str.to_re "+")) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))))))) (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "-") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (str.to_re "\u{22}"))) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.* (re.++ (re.union (str.to_re ".") (str.to_re "+")) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")))))))) (re.++ (re.++ (str.to_re "@") (re.++ (re.++ (re.* (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (str.to_re "."))) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) ((_ re.loop 0 66) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 6) (re.range "a" "z")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "a" "z")))))))) (str.to_re "")))) (re.++ (re.++ (str.to_re "@") (re.++ (re.opt (str.to_re "[")) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "25") (re.++ (re.range "0" "5") (str.to_re "."))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.++ (re.range "0" "9") (str.to_re "."))))) (re.++ (str.to_re "1") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".")))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.++ ((_ re.loop 2 2) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.opt (str.to_re "]"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)