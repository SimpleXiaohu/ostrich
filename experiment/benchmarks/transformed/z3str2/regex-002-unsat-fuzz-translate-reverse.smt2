(declare-const x String)
(declare-const y String)
(assert (= x "MCxC1ndC=Cs''\t''&LgCxCE''\x0c''bMaPmCNCk"))
(assert (str.in.re x (re.* (str.to.re "dC~C"))))
(check-sat)
(get-model)