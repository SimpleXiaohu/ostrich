;test regex var *_0x([a-f0-9]){4,6} *= *_0x([a-f0-9]){4,6}\['\w{5}'\]\(!_0x([a-f0-9]){4,6}, *!_0x([a-f0-9]){4,6}\)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 4 6) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "=") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 4 6) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.++ (str.to_re "[") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "]") (re.++ (str.to_re "(") (re.++ (str.to_re "!") (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re "x") ((_ re.loop 4 6) (re.union (re.range "a" "f") (re.range "0" "9")))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re "!") (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 4 6) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re ")")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)