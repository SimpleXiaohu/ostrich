(declare-const x String)
(assert (= x "WFWdndn}eWFWdn"))
(assert (str.in.re x (re.* (re.union (str.to.re "dn}e") (str.to.re "WFWdn")))))
(check-sat)
(get-model)