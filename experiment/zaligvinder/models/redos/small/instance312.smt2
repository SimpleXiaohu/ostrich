;test regex Segment UID: 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2}) 0x([0-9a-f]{2})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re " ") (re.++ (str.to_re "0") (re.++ (str.to_re "x") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)