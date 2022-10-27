(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.union (str.to.re "Q%QOQ%Q") (str.to.re "E")))))
(assert (= 6 (str.len x)))
(assert (not (= x "6' 'haQ%QOQ%Q")))
(assert (not (= x "c'\r''\r'M")))
(assert (not (= x "c")))
(assert (not (= x "ca")))
(assert (not (= x "c'\t'[")))
(assert (not (= x "c[c")))
(assert (not (= x "6K[")))
(check-sat)
(get-model)