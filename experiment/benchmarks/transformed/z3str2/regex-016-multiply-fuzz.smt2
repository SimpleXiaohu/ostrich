(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "a3f7ubcdpBa") (str.to.re "1/15Aj0%'\t'C' 'y:")))))
(assert (= 9 (str.len x)))
(assert (not (= x "&V5>A=O2hB' 'Z6aJ'\n'<*I&ei^l'\t'kN|~<Um}~cuFgurP{IX(mew5[S)""G6%gb^d)c9!&1dTSFEYo5klZ_m-$L]45[8?<""Tx\\h:LCoEt`5)FqQUQ}|'\n'12aadF7""v]R'\r'[&z4!JfFdd")))
(assert (not (= x "5Du$'\x0c'x7Vu""QX1sliyabc/V' 'W'\x0c'tuSxY~;:#TV'\x0b'dPUMj|<r\\abHbm2(T`%\\7gN^2'\x0b't&'\r'W9'\t'lK{%o*WnGr\\'\x0b'stn7ht~-OD[4)l2:Xo*E0s2IzZ`|!6_6*0Aq[/(uODW.L\\Mc")))
(check-sat)
(get-model)