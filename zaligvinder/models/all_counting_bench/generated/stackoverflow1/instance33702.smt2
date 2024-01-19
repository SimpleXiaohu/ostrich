;test regex '#^/[a-z]{2}/(([a-z][^\/])(1))(?:(\/))([^.]+)\.html#' => '$1$2pages/view/$3/'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (str.to_re "#")) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re "/") (re.++ (re.++ (re.++ (re.range "a" "z") (re.diff re.allchar (str.to_re "/"))) (str.to_re "1")) (re.++ (str.to_re "/") (re.++ (re.+ (re.diff re.allchar (str.to_re "."))) (re.++ (str.to_re ".") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "m") (re.++ (str.to_re "l") (re.++ (str.to_re "#") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "1"))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (str.to_re "/")))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re "/") (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)