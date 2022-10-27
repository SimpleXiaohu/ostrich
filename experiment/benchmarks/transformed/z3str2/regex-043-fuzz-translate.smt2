(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.union (str.to.re "'\x0b'K'\x0b'") (str.to.re ",")))))
(assert (= 6 (str.len x)))
(assert (not (= x "6F{@'\x0b'K'\x0b'")))
(assert (not (= x "jDD^")))
(assert (not (= x "j")))
(assert (not (= x "j@")))
(assert (not (= x "j!+")))
(assert (not (= x "j+j")))
(assert (not (= x "6H+")))
(check-sat)
(get-model)