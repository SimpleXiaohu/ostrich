(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aH") (str.to.re "")))))
(assert (= 10 (str.len x)))
(assert (not (= x "h;)SRu'wapp'\r'FPw%")))
(assert (not (= x ",uT7Bp3;C5""{")))
(assert (not (= x "b5)'\x0b'b'\n'8|,vSh?")))
(assert (not (= x "bb")))
(assert (not (= x "&'\x0c'E<ba""!")))
(assert (not (= x """s5D&bG&abb")))
(assert (not (= x "a'e'\x0b''\t''-")))
(check-sat)
(get-model)