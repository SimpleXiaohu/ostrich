;test regex /(https?|ftp):\/\/(((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.++ (re.opt (re.++ (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "=")))))))))))) (str.to_re ":"))) (str.to_re "@"))) (re.++ (re.union (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))))))))) (re.++ (re.+ (re.++ (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}"))))) (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}"))))))) (str.to_re "."))) (re.++ (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}"))))) (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}"))))))) (re.opt (str.to_re "."))))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))))) (re.++ (re.opt (re.++ (str.to_re "/") (re.opt (re.++ (re.+ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "=")))))))))))) (str.to_re ":")) (str.to_re "@"))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "=")))))))))))) (str.to_re ":")) (str.to_re "@"))))))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "=")))))))))))) (str.to_re ":")) (str.to_re "@")) (re.range "\u{e000}" "\u{f8ff}")) (str.to_re "/")) (str.to_re "?"))))) (re.++ (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (str.to_re "-")) (str.to_re ".")) (str.to_re "_")) (str.to_re "~")) (re.union (re.range "\u{00a0}" "\u{d7ff}") (re.union (re.range "\u{f900}" "\u{fdcf}") (re.range "\u{fdf0}" "\u{ffef}")))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (str.to_re "=")))))))))))) (str.to_re ":")) (str.to_re "@")) (str.to_re "/")) (str.to_re "?"))))) (str.to_re "/"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)