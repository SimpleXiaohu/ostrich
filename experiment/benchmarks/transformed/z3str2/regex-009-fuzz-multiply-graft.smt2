(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "||//GG''''\x0b''''\x0b''''==dd")))
(assert (str.in.re x (re.+ (str.to.re "''ggzzvvPPddiiww<<99..((aa44--yy``'''' '''' ''''99!!nn"))))
(assert (> 14 (str.len x)))
(assert (< (str.to.int x) 10))
(check-sat)
(get-model)