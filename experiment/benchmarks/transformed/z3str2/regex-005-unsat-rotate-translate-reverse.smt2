(declare-const x String)
(declare-const y String)
(assert (= x "UUUUUUUUU"))
(assert (str.in.re x (re.* (re.* (str.to.re "*Kj")))))
(check-sat)
(get-model)