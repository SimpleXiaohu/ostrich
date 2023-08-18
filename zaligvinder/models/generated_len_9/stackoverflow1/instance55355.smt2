;test regex (\60){7}(100)(\2\1)(110)\3(101)01\2(111)\3(\2\4)\5\1\6\7\6\5\6
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 7 7) (_ re.reference 60)) (re.++ (str.to_re "100") (re.++ (re.++ (_ re.reference 2) (_ re.reference 1)) (re.++ (str.to_re "110") (re.++ (_ re.reference 3) (re.++ (str.to_re "101") (re.++ (str.to_re "01") (re.++ (_ re.reference 2) (re.++ (str.to_re "111") (re.++ (_ re.reference 3) (re.++ (re.++ (_ re.reference 2) (_ re.reference 4)) (re.++ (_ re.reference 5) (re.++ (_ re.reference 1) (re.++ (_ re.reference 6) (re.++ (_ re.reference 7) (re.++ (_ re.reference 6) (re.++ (_ re.reference 5) (_ re.reference 6))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)