(declare-const x String)
(assert (= x "WN@|yYi$YJHRv-#eO:rS4.9}A`,C2/dJ-dUQI\\.Ek@h2&TWv?)fZ>Ode"))
(assert (str.in.re x (str.to.re "cc:@u'\x0b'ee")))
(check-sat)
(get-model)