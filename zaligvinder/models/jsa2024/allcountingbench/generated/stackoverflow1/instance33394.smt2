;test regex '^[var|const]{0,1}[a-z\$\_]{1,}=require([\'|"][assert|fs|path][\'|"])[;|,]{0,1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "") (re.++ ((_ re.loop 0 1) (re.union (str.to_re "v") (re.union (str.to_re "a") (re.union (str.to_re "r") (re.union (str.to_re "|") (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "s") (str.to_re "t")))))))))) (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.union (str.to_re "$") (str.to_re "_")))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (str.to_re "$") (str.to_re "_"))))) (re.++ (str.to_re "=") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (re.++ (re.union (str.to_re "\u{27}") (re.union (str.to_re "|") (str.to_re "\u{22}"))) (re.++ (re.union (str.to_re "a") (re.union (str.to_re "s") (re.union (str.to_re "s") (re.union (str.to_re "e") (re.union (str.to_re "r") (re.union (str.to_re "t") (re.union (str.to_re "|") (re.union (str.to_re "f") (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re "p") (re.union (str.to_re "a") (re.union (str.to_re "t") (str.to_re "h")))))))))))))) (re.union (str.to_re "\u{27}") (re.union (str.to_re "|") (str.to_re "\u{22}"))))) ((_ re.loop 0 1) (re.union (str.to_re ";") (re.union (str.to_re "|") (str.to_re ","))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)