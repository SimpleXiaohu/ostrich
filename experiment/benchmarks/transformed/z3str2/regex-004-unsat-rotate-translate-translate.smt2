(declare-const x String)
(assert (= x "W$VyV' 'VyV' 'G"))
(assert (str.in.re x (re.union (re.* (re.* (str.to.re "VyV' 'G"))) (str.to.re "W$VyV' '"))))
(check-sat)
(get-model)