;test regex matrix(?:(3d)\(-{0,1}\d+(?:, -{0,1}\d+)*(?:, (-{0,1}\d+))(?:, (-{0,1}\d+))(?:, (-{0,1}\d+)), -{0,1}\d+\)|\(-{0,1}\d+(?:, -{0,1}\d+)*(?:, (-{0,1}\d+))(?:, (-{0,1}\d+))\))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "x") (re.union (re.++ (re.++ (re.++ (str.to_re "3") (str.to_re "d")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.* (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9")))))) (re.++ (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9"))))) (re.++ (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (str.to_re ")")))))) (re.++ (str.to_re "(") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.* (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9")))))) (re.++ (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9"))))) (re.++ (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.range "0" "9"))))) (str.to_re ")"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)