(declare-const x String)
(declare-const y String)
(assert (= x "a.'\x0b'95]B_}YTmYcccabc"))
(assert (str.in.re x (re.+ (re.* (str.to.re "\\'\r'aZMtcbcc")))))
(check-sat)
(get-model)