(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "aArUY*"))))
(assert (str.in.re x (re.* (str.to.re "ab*P${QKhb#["))))
(assert (> (str.len x) 30))
(assert (< (str.len x) 42))
(check-sat)
(get-model)