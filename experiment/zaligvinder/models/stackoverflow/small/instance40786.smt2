;test regex <xs:pattern value="((\(?(0(0|11)\)?[\s-]?\(?|\+)44\)?[\s-]?(\(?0\)?[\s-]?)?)|(\(?0))((\d{5}\)?[\s-]?\d{4,5})|(\d{4}\)?[\s-]?(\d{5}|\d{3}[\s-]?\d{3}))|(\d{3}\)?[\s-]?\d{3}[\s-]?\d{3,4})|(\d{2}\)?[\s-]?\d{4}[\s-]?\d{4}))([\s-]?(x|ext\.?|#)\d{3,4})?" />
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "x") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.++ (re.opt (str.to_re "(")) (re.++ (re.union (re.++ (str.to_re "0") (re.++ (re.union (str.to_re "0") (str.to_re "11")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.opt (str.to_re "(")))))) (str.to_re "+")) (re.++ (str.to_re "44") (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.opt (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "0") (re.++ (re.opt (str.to_re ")")) (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-")))))))))))) (re.++ (re.opt (str.to_re "(")) (str.to_re "0"))) (re.++ (re.union (re.union (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) ((_ re.loop 4 5) (re.range "0" "9"))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9"))))))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) ((_ re.loop 3 4) (re.range "0" "9")))))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))))))) (re.++ (re.opt (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.++ (re.union (re.union (str.to_re "x") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.opt (str.to_re ".")))))) (str.to_re "#")) ((_ re.loop 3 4) (re.range "0" "9"))))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (str.to_re ">"))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)