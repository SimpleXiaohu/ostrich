;test regex ^^rgba[(](?:\s*0*(?:\d\d?(?:\.\d+)?(?:\s*%)?|\.\d+\s*%|100(?:\.0*)?\s*%|(?:1\d\d|2[0-4]\d|25[0-5])(?:\.\d+)?)\s*,){3}\s*0*(?:\.\d+|1(?:\.0*)?)\s*[)]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.++ (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.* (str.to_re "0")) (re.++ (re.union (re.union (re.union (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "%")))))) (re.++ (str.to_re ".") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "%"))))) (re.++ (str.to_re "100") (re.++ (re.opt (re.++ (str.to_re ".") (re.* (str.to_re "0")))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "%"))))) (re.++ (re.union (re.union (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (str.to_re ","))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.* (str.to_re "0")) (re.++ (re.union (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "1") (re.opt (re.++ (str.to_re ".") (re.* (str.to_re "0")))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re ")"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)