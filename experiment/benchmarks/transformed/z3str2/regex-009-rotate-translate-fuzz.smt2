(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "|<fU',,XnhDbspz"))))
(assert (str.in.re x (re.* (str.to.re "|'k+yjI;E6f'\x0b'ztGT9M|''\x0c'7>yO&O0&Wiz"))))
(assert (> (str.to.int x) 16))
(assert (< (str.len x) 33))
(check-sat)
(get-model)