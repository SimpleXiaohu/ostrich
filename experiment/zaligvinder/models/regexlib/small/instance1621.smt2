;test regex ^([\#]{0,1}([a-fA-F0-9]{6}|[a-fA-F0-9]{3})|rgb\(([0-9]{1},|[1-9]{1}[0-9]{1},|[1]{1}[0-9]{2},|[2]{1}[0-4]{1}[0-9]{1},|25[0-5]{1},){2}([0-9]{1}|[1-9]{1}[0-9]{1}|[1]{1}[0-9]{2}|[2]{1}[0-4]{1}[0-9]{1}|25[0-5]{1}){1}\)|rgb\(([0-9]{1}%,|[1-9]{1}[0-9]{1}%,|100%,){2}([0-9]{1}%|[1-9]{1}[0-9]{1}%|100%){1}\))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ ((_ re.loop 0 1) (str.to_re "#")) (re.union ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))))) (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 2) (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to_re ","))) (re.++ (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ","))) (re.++ (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re ","))) (re.++ (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5"))) (str.to_re ",")))) (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5"))))) (str.to_re ")")))))))) (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "b") (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 2) (re.union (re.union (re.++ (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (str.to_re ",")) (re.++ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%"))) (str.to_re ","))) (re.++ (re.++ (str.to_re "100") (str.to_re "%")) (str.to_re ",")))) (re.++ ((_ re.loop 1 1) (re.union (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")))) (re.++ (str.to_re "100") (str.to_re "%")))) (str.to_re ")"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)