(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aabb"))))
(assert (str.in.re x (str.to.re "aabbaabbaacc")))
(assert (str.in.re x (re.* (re.* (str.to.re "aabbaabb")))))
(check-sat)
(get-model)