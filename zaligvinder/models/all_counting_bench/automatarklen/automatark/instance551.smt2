(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^Content-Type:\s*(\w+)\s*/?\s*(\w*)?\s*;\s*((\w+)?\s*=\s*((".+")|(\S+)))?
(assert (str.in_re X (re.++ (str.to_re "Content-Type:") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "/")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ";") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ (re.opt (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (str.to_re "\u{22}") (re.+ re.allchar) (str.to_re "\u{22}")) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))) (str.to_re "\u{0a}"))))
; ^(((0[1-9]{1})|(1[0-2]{1}))\/?(([0-2]{1}[1-9]{1})|(3[0-1]{1}))\/?(([12]{1}[0-9]{1})?[0-9]{2}) ?(([01]{1}[0-9]{1})|(2[0-4]{1}))\:?([0-5]{1}[0-9]{1}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.++ (str.to_re "0") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to_re "1") ((_ re.loop 1 1) (re.range "0" "2")))) (re.opt (str.to_re "/")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to_re "3") ((_ re.loop 1 1) (re.range "0" "1")))) (re.opt (str.to_re "/")) (re.opt (str.to_re " ")) (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to_re "0") (str.to_re "1"))) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "2") ((_ re.loop 1 1) (re.range "0" "4")))) (re.opt (str.to_re ":")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 1) (re.range "0" "9")))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (str.in_re X (re.++ (str.to_re "//images2//U\u{0a}") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; ^([1-9]{1}[0-9]{3}[,]?)*([1-9]{1}[0-9]{3})$
(assert (not (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ",")))) (str.to_re "\u{0a}") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9"))))))
(assert (> (str.len X) 10))
(check-sat)