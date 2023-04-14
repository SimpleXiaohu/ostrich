(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((\s|[0])\.(\d{0,2}\s{0,2}))?$|^(\.(\d\s){0,2})?$|^(\s{0,4}[1]{0,1}\.[0]{0,2}\s{0,4})?$|^(\s{0,4}[1]{0,1}\s{0,4})?$|^(\s{0,4}[0]{0,4}[1]{0,1}\s{0,4})?$|^([0]{0,4}\s{0,4})?$|^(\s{0,3}[0]{0,3}\.{1}\d{0,2}\s{0,2})?$
(assert (not (str.in_re X (re.union (re.opt (re.++ (re.union (str.to_re "0") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.++ (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "1")) (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "1")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 0 4) (str.to_re "0")) (re.opt (str.to_re "1")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.opt (re.++ ((_ re.loop 0 4) (str.to_re "0")) ((_ re.loop 0 4) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.++ (re.opt (re.++ ((_ re.loop 0 3) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 0 3) (str.to_re "0")) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9")) ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}"))))))
; EFError\swww\u{2e}malware-stopper\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "www.malware-stopper.com\u{0a}"))))
; ^[+-]?\d*(([,.]\d{3})+)?([,.]\d+)?([eE][+-]?\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (re.range "0" "9")) (re.opt (re.+ (re.++ (re.union (str.to_re ",") (str.to_re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to_re ",") (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; ^((8|\+38)-?)?(\(?044\)?)?-?\d{3}-?\d{2}-?\d{2}$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "8") (str.to_re "+38")) (re.opt (str.to_re "-")))) (re.opt (re.++ (re.opt (str.to_re "(")) (str.to_re "044") (re.opt (str.to_re ")")))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; ^-?\d+([.,]?\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)