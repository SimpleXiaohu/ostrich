(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "_<8AAp7~-"))))
(assert (str.in.re x (re.+ (str.to.re "__~"))))
(assert (str.in.re x (re.+ (str.to.re "_{e[ecw`"":'\x0b'/%@heqe""-Bil:6'\x0c''~v4M&G>buefet0ePeMuT0' '"))))
(assert (> (str.to.int x) 1))
(check-sat)
(get-model)