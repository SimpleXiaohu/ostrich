(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "%E?c") (str.to.re "}v'\t'--|")))))
(assert (= 2 (str.to.int x)))
(check-sat)
(get-model)