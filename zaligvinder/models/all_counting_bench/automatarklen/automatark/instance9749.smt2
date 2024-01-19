(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^([1-9]|[1][0-2]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([1-9]|[1][0-2])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])$)
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m"))))) (re.++ (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "\u{0a}"))))))
; /^\/\d{8,11}\/1[34]\d{8}\.pdf$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 11) (re.range "0" "9")) (str.to_re "/1") (re.union (str.to_re "3") (str.to_re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re ".pdf/U\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
