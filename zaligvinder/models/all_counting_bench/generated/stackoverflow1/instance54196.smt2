;test regex "((?:[^"\\]+|(?:\\{2})*\\"|\\)*)"|'((?:[^'\\]+|(?:\\{2})*\\'|\\)*)'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.union (re.union (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.diff re.allchar (str.to_re "\\")))) (re.++ (re.* ((_ re.loop 2 2) (str.to_re "\\"))) (re.++ (str.to_re "\\") (str.to_re "\u{22}")))) (str.to_re "\\"))) (str.to_re "\u{22}"))) (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.union (re.union (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.diff re.allchar (str.to_re "\\")))) (re.++ (re.* ((_ re.loop 2 2) (str.to_re "\\"))) (re.++ (str.to_re "\\") (str.to_re "\u{27}")))) (str.to_re "\\"))) (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)