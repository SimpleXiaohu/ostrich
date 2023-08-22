;test regex /^(https?|ftp)\:\/\/([a-z0-9+\!\*\(\)\,\;\?\&\=\$\_\.\-]+(\:[a-z0-9+\!\*\(\)\,\;\?\&\=\$\_\.\-]+)?@)?[a-z0-9\+\$\_\-]+(\.[a-z0-9+\$\_\-]+)*(\:[0-9]{2,5})?(\/([a-z0-9+\$\_\-]\.?)+)*\/?(\?[a-z\+\&\$\_\.\-][a-z0-9\;\:\@\/\&\%\=\+\$\_\.\-]*)?(#[a-z\_\.\-][a-z0-9\+\$\_\.\-]*)?$/i
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "?") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re "$") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-"))))))))))))))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "!") (re.union (str.to_re "*") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "?") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re "$") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-"))))))))))))))))))) (str.to_re "@")))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re "_") (str.to_re "-"))))))) (re.++ (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re "_") (str.to_re "-"))))))))) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 2 5) (re.range "0" "9")))) (re.++ (re.* (re.++ (str.to_re "/") (re.+ (re.++ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re "_") (str.to_re "-")))))) (re.opt (str.to_re ".")))))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (re.++ (str.to_re "?") (re.++ (re.union (re.range "a" "z") (re.union (str.to_re "+") (re.union (str.to_re "&") (re.union (str.to_re "$") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-"))))))) (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "@") (re.union (str.to_re "/") (re.union (str.to_re "&") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-")))))))))))))))))) (re.opt (re.++ (str.to_re "#") (re.++ (re.union (re.range "a" "z") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-")))) (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-")))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)