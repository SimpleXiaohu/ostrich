(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "9fc.")))
(assert (= (str.to.int x) 11))
(assert (not (= x "r<,'\x0b'f4p}'\r'E'\t'Dtha`d@^'\r'Y+*jW1d@Z`y7Bz%=b")))
(assert (not (= x "m' 'FH$/n8kc'r'3l^6!D~MbM' 'k`5`!n")))
(check-sat)
(get-model)