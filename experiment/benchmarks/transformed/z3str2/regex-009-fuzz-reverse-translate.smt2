(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "pwLLkLLs)O"))))
(assert (str.in.re x (re.+ (str.to.re "D^9LL?LLWou4x:;9yrQpA'\r'}' 'L"))))
(assert (> (str.len x) 7))
(assert (< (str.to.int x) 5))
(check-sat)
(get-model)