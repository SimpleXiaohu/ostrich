(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "") (re.+ (str.to.re "m")))))
(assert (str.in.re x (re.union (str.to.re "") (re.* (str.to.re "")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "f"))) (re.++ (str.to.re "") (str.to.re "<")))))
(check-sat)
(get-model)