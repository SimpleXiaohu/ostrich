(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "abG87ccdB/' '}+#=' 'AOvl)_;Vd") (str.to.re "1xlE<|VVt'\n''\t'<\\_2E5wX7%")))))
(assert (= 13 (str.len x)))
(check-sat)
(get-model)