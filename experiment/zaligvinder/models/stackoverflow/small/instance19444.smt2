;test regex LANGUAGE LANG_([\s\S]*?)#endif(.*)\n/{1,}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "G") (re.++ (str.to_re "U") (re.++ (str.to_re "A") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "G") (re.++ (str.to_re "_") (re.++ (re.* (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))) (re.++ (str.to_re "#") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (re.* (str.to_re "/")) ((_ re.loop 1 1) (str.to_re "/"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)