(declare-const x String)
(declare-const y String)
(assert (= x "##DD..uuww~~aa>>||!!VV!!^^BB####"))
(assert (str.in.re x (re.+ (re.+ (str.to.re "VVBB")))))
(check-sat)
(get-model)