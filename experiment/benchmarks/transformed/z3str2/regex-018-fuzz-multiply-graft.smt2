(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "''''\r''''\r''''VV**22")))
(assert (= (str.to.int x) 16))
(assert (not (= x "1199''''\t''''\t''''zzCCvvSSqqNNBB")))
(check-sat)
(get-model)