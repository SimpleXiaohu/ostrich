(declare-const x String)
(declare-const y String)
(assert (= x "+++++:bnT'\x0b'r7'\t'-F4+"))
(assert (str.in.re x (re.+ (re.* (str.to.re "Y")))))
(check-sat)
(get-model)