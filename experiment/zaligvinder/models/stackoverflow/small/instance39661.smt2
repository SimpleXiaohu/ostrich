;test regex ^([^a-zA-Z!"&'*+,:;<=>@_]{16}=[^a-zA-Z!"&'*+,:;<=>@_]+|[^a-zA-Z!"&'*+,:;<=>@_]{19}=[^a-zA-Z!"&'*+,:;<=>@_]*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ ((_ re.loop 16 16) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (str.to_re "!")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "+")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re ":")) (re.inter (re.diff re.allchar (str.to_re ";")) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re "=")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "@")) (re.diff re.allchar (str.to_re "_")))))))))))))))))) (re.++ (str.to_re "=") (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (str.to_re "!")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "+")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re ":")) (re.inter (re.diff re.allchar (str.to_re ";")) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re "=")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "@")) (re.diff re.allchar (str.to_re "_")))))))))))))))))))) (re.++ ((_ re.loop 19 19) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (str.to_re "!")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "+")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re ":")) (re.inter (re.diff re.allchar (str.to_re ";")) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re "=")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "@")) (re.diff re.allchar (str.to_re "_")))))))))))))))))) (re.++ (str.to_re "=") (re.* (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (str.to_re "!")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "+")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re ":")) (re.inter (re.diff re.allchar (str.to_re ";")) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re "=")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "@")) (re.diff re.allchar (str.to_re "_")))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)