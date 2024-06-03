;test regex [0-9]+(?:\s){0,10}(?:\r?\n?)([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2}),([0-9]{1,3}) --> ([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2}),([0-9]{1,3})(?:\s){0,10}(?:\r\n|\n|\r){1}(.*\r?\n?.*\r?\n?.*)(?:\n|\r)(?:\n|\r)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 0 10) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.++ (re.opt (str.to_re "\u{0d}")) (re.opt (str.to_re "\u{0a}"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 1 2) (re.range "0" "9"))))))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "-") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 1 2) (re.range "0" "9")))))))))))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 0 10) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 1) (re.union (re.union (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")) (str.to_re "\u{0a}")) (str.to_re "\u{0d}"))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (re.opt (str.to_re "\u{0a}")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (re.opt (str.to_re "\u{0a}")) (re.* (re.diff re.allchar (str.to_re "\n"))))))))) (re.++ (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}")) (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)