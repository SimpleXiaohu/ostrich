(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "bb}}"))))
(assert (str.in.re x (re.+ (str.to.re "aabb"))))
(assert (str.in.re x (re.+ (str.to.re "ccEE$$@@$$tt``bb"))))
(check-sat)
(get-model)