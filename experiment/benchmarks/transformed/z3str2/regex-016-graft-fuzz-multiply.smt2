(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "ss'''\n''\n'''~~dd")))
(assert (= (str.len x) 36))
(assert (not (= x "aa88JJ??3322__$$tt--tt[[ll==dd1133--//uuFF''' '' '''&&$$``nn11??QQpp$$")))
(assert (not (= x "##ll{{'''\t''\t'''??MM]]bb\\\\hh88KK77kk))ccaaqqddGG??VVTTPP]]11")))
(check-sat)
(get-model)