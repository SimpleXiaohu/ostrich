;test regex select t.City, t.Mall, t.Number_Phone,  t.Number_Phone rlike '^((\+380){1}(\(542\)){1}[0-9]{6}){1}&' as test from (select c.name as City, m.name as Mall, p.text_value as Number_Phone from objects c cross join objects m left join params p on (m.object_id=p.object_id and p.attr_id=11) where (c.object_type_id=23 and m.object_type_id=25)) as t
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "C") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "y"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "l"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "N") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "P") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "e"))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "N") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "P") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.++ (str.to_re "+") (str.to_re "380"))) (re.++ ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.++ (str.to_re "542") (str.to_re ")")))) ((_ re.loop 6 6) (re.range "0" "9"))))) (re.++ (str.to_re "&") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "y"))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "l"))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "P") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (str.to_re "11"))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "23") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (str.to_re "25"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (str.to_re "t")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)