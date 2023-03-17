;test regex ^https?://(((0|([1-9][0-9]{0,1}))(\.(0|([1-9][0-9]{0,1}))){3})|([a-zA-Z]([a-zA-Z0-9$\-_@\.&+*"\'\(\),]|(%[0-9a-fA-F][0-9a-fA-F]))*(\.([a-zA-Z]([a-zA-Z0-9$\-_@\.&+!*"\'\(\),]|(%[0-9a-fA-F][0-9a-fA-F]))*))*))(/|((/([a-zA-Z]([a-zA-Z0-9$\-_@\.&+!*"\'\(\),]|(%[0-9a-fA-F][0-9a-fA-F]))*))*))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.union (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 1) (re.range "0" "9")))) ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 1) (re.range "0" "9"))))))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "$") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (str.to_re "&") (re.union (str.to_re "+") (re.union (str.to_re "*") (re.union (str.to_re "\u{22}") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re ",")))))))))))))))) (re.++ (str.to_re "%") (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))) (re.* (re.++ (str.to_re ".") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "$") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (str.to_re "&") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "\u{22}") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re ","))))))))))))))))) (re.++ (str.to_re "%") (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))))))) (re.union (str.to_re "/") (re.* (re.++ (str.to_re "/") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "$") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (str.to_re "&") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "\u{22}") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re ","))))))))))))))))) (re.++ (str.to_re "%") (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)