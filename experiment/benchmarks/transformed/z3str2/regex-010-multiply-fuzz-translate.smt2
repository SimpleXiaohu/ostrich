(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re ",KAn"))))
(assert (str.in.re x (re.+ (str.to.re "t1iZPAB!M'\n'AA"))))
(assert (str.in.re x (re.* (str.to.re "PJ'\n'oThZS;LgAAG*hbm_gAFX'\x0b'|5sZRZa_n0V"))))
(check-sat)
(get-model)