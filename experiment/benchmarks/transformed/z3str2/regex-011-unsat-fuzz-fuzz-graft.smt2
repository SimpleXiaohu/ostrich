(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "<'''\t'''g)>>CpW1*NO|pKj]$Ecf&0XxP'' ''Y!"))))
(assert (str.in.re y (str.to.re """rP1g|sm''\t''OX")))
(assert (= 0 (str.to.int x)))
(check-sat)
(get-model)