;test regex /^(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$|^(\/?([a-zA-Z0-9_\.\-]+)?)+$/
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p"))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (str.to_re "s")))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ ((_ re.loop 0 1) (str.to_re ":")) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "@"))))) (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to_re "/") (re.++ (str.to_re "/") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "#") (re.union (str.to_re "!") (re.union (str.to_re ":") (re.union (str.to_re ".") (re.union (str.to_re "?") (re.union (str.to_re "+") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "%") (re.union (str.to_re "@") (re.union (str.to_re "!") (re.union (str.to_re "-") (str.to_re "/")))))))))))))))))))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.+ (re.++ (re.opt (str.to_re "/")) (re.opt (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-"))))))))))) (re.++ (str.to_re "") (str.to_re "/"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)