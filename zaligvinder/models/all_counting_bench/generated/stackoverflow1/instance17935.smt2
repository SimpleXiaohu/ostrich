;test regex edit .+(\s+config secondaryip\r?\n(\s+edit \d+\r?\n.+\s+next\r?\n){1,}\s+end\r?\n)?.+next\r?\n
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.++ (re.++ (re.* (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}")))))))))))))))))) ((_ re.loop 1 1) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))))))))))))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))))))))))))))))))))))))))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)