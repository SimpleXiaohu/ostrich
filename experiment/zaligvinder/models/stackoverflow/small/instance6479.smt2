;test regex (account|acct|loan)[\S\s]*\d{10}$|\d{10}[\S\s]*(account|acct|loan)$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.union (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "t"))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (str.to_re "t"))))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (str.to_re "n"))))) (re.++ (re.* (re.union (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))) (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) ((_ re.loop 10 10) (re.range "0" "9")))) (str.to_re "")) (re.++ (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (re.* (re.union (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))) (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.union (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "t"))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "c") (str.to_re "t"))))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (str.to_re "n"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)