(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "d""Ac1at") (str.to.re "d{")))))
(assert (= 21 (str.to.int x)))
(assert (not (= x "3phFt$=];]+$[t12""\\")))
(assert (not (= x "\\4Q[|#J3*tf]w]'Bd71^D-8'\r'W\\ug6'\x0c'20vh|K]<]B>t'\t'")))
(check-sat)
(get-model)