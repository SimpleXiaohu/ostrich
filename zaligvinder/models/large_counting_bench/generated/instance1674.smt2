;test regex ^\s*\(([AEINPRSTUW]{3})\s(\d{1,3}\D\d{2,5})\)(\r\n?|\n)\s*(http+\S{1,100})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.union (str.to_re "A") (re.union (str.to_re "E") (re.union (str.to_re "I") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "U") (str.to_re "W"))))))))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.diff re.allchar (re.range "0" "9")) ((_ re.loop 2 5) (re.range "0" "9")))) (re.++ (str.to_re ")") (re.++ (re.union (re.++ (str.to_re "\u{0d}") (re.opt (str.to_re "\u{0a}"))) (str.to_re "\u{0a}")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (re.+ (str.to_re "p")) ((_ re.loop 1 100) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)