(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "x32") (str.to.re "f.c")))))
(assert (= 7 (str.to.int x)))
(assert (not (= x "7@~}tbc>}7'whc\\K0]dwg2)P,{9`")))
(assert (not (= x "bT)qR{[r""/Mbcd12")))
(check-sat)
(get-model)