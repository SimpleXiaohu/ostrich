;test regex grep -iP '([^:])([^:])([^:])([^:])([^:])([^:])([^:])([^:]*:){4}[^:]*?\1\2\3\4\5\6\7'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "i") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ (re.diff re.allchar (str.to_re ":")) (re.++ ((_ re.loop 4 4) (re.++ (re.* (re.diff re.allchar (str.to_re ":"))) (str.to_re ":"))) (re.++ (re.*? (re.diff re.allchar (str.to_re ":"))) (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (re.++ (_ re.reference 3) (re.++ (_ re.reference 4) (re.++ (_ re.reference 5) (re.++ (_ re.reference 6) (re.++ (_ re.reference 7) (str.to_re "\u{27}")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)