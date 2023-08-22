;test regex @"^.{3}(.{3})\s?([N|Y]?)?(?:[0-9]\s+)?(\w{4})"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "@") (str.to_re "\u{22}")) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (re.opt (re.union (str.to_re "N") (re.union (str.to_re "|") (str.to_re "Y"))))) (re.++ (re.opt (re.++ (re.range "0" "9") (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "\u{22}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)