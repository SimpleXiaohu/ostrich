;test regex /^([a-z0-9+.-]+):(?://(?:((?:[a-z0-9-._~!$&'()*+,;=:]|%[0-9A-F]{2})*)@)?((?:[a-z0-9-._~!$&'()*+,;=]|%[0-9A-F]{2})*)(?::(\d*))?(/(?:[a-z0-9-._~!$&'()*+,;=:@/]|%[0-9A-F]{2})*)?|(/?(?:[a-z0-9-._~!$&'()*+,;=:@]|%[0-9A-F]{2})+(?:[a-z0-9-._~!$&'()*+,;=:@/]|%[0-9A-F]{2})*)?)(?:\?((?:[a-z0-9-._~!$&'()*+,;=:/?@]|%[0-9A-F]{2})*))?(?:#((?:[a-z0-9-._~!$&'()*+,;=:/?@]|%[0-9A-F]{2})*))?$/i
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re ".") (str.to_re "-")))))) (re.++ (str.to_re ":") (re.++ (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.opt (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (str.to_re ":")))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))) (str.to_re "@"))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "="))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "@") (str.to_re "/")))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))))))))))))) (re.opt (re.++ (re.opt (str.to_re "/")) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re ":") (str.to_re "@"))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "@") (str.to_re "/")))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "/") (re.union (str.to_re "?") (str.to_re "@"))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re ":") (re.union (str.to_re "/") (re.union (str.to_re "?") (str.to_re "@"))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F")))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)