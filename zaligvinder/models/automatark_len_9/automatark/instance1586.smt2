(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^100$|^[0-9]{1,2}$|^[0-9]{1,2}\,[0-9]{1,3}$
(assert (str.in_re X (re.union (str.to_re "100") ((_ re.loop 1 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; (\w+),\s+(\w+)\s+ (\((\w+)\)\s+)? (\w+),\s+(\w+)[^\d]+ (\d+)\s+(\w+)
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ",") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re " ") (re.opt (re.++ (str.to_re "(") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ")") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re " ") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ",") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.range "0" "9")) (str.to_re " ") (re.+ (re.range "0" "9")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}")))))
; Host\x3A\s+\x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\u{2f}lo\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "/toolbar/supremetb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetb\u{0a}")))))
; /^\/info\.php\?act\u{3d}(list|online)/U
(assert (str.in_re X (re.++ (str.to_re "//info.php?act=") (re.union (str.to_re "list") (str.to_re "online")) (str.to_re "/U\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
