;test regex <tr class="[^"]*">\s+<td>(\d{6})<\/td>|\G<\/td>[^<>]*+<td>\K\d{1,6}|<td>(\d{1,2})<\/td>
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\u{22}"))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ">") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (str.to_re ">"))))))))))))))))))))))))) (re.++ (str.to_re "G") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ (re.+ (re.* (re.inter (re.diff re.allchar (str.to_re "<")) (re.diff re.allchar (str.to_re ">"))))) (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ (str.to_re "K") ((_ re.loop 1 6) (re.range "0" "9"))))))))))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (str.to_re ">")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)