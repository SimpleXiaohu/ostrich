(declare-const x String)
(assert (= x "Dq'\x0c'&'\t'Byt@?2qf~Sxxt(Yb0X+uuo?Y^V'\x0c'?iXApbk'\x0b'<_~\\ic>' 'xI]e'\x0b'w)t'\n'SXT|@UYNc[c"))
(assert (str.in.re x (re.+ (re.++ (str.to.re "~.mO!a<") (str.to.re "e")))))
(check-sat)
(get-model)