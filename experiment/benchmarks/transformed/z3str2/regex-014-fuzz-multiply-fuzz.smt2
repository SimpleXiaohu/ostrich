(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "h"))))
(assert (str.in.re y (re.+ (str.to.re "f""r+^3'\r'"))))
(assert (= (str.len x) 6))
(assert (= (str.len y) 16))
(check-sat)
(get-model)