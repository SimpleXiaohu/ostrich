;test regex ^\(?(?:(?:0(?:0|11)\)?[\s-]?\(?|\+)(44)\)?[\s-]?\(?(?:0\)?[\s-]?\(?)?|0)([1-9]\d{1,4}\)?[\s\d-]+)(?:((?:x|ext\.?\s?|\#)\d+)?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "(")) (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.++ (re.union (str.to_re "0") (str.to_re "11")) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.opt (str.to_re "(")))))) (str.to_re "+")) (re.++ (str.to_re "44") (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.++ (re.opt (str.to_re "(")) (re.opt (re.++ (str.to_re "0") (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) (re.opt (str.to_re "("))))))))))) (str.to_re "0")) (re.++ (re.++ (re.range "1" "9") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.+ (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.range "0" "9") (str.to_re "-"))))))) (re.opt (re.++ (re.union (re.union (str.to_re "x") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))) (str.to_re "#")) (re.+ (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)