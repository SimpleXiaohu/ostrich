(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "!Ud3kG'' ''@'' ''Ad{O"))))
(assert (str.in.re x (re.* (str.to.re "ce_+9bd{'' ''0s'D{A1B~$Oo.PzGdP=M''\t''M'' ''Go8''\x0b''-"))))
(assert (> (str.to.int x) 32))
(assert (< (str.to.int x) 42))
(check-sat)
(get-model)