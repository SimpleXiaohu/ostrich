(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "'\r'z'\t'C'\n'~\\"))))
(assert (str.in.re y (re.* (re.+ (str.to.re "<?@'\n'2")))))
(assert (= (str.len x) 6))
(assert (= (str.len y) 16))
(check-sat)
(get-model)