(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "AI@W>w7Bo<?@W") (re.union (str.to.re "aaz~'\n'5bbb>G+>i'\x0c'4i6HXb{\\Jv' 'ewQl'\t'qt\\Ejy=i|8jnHos[E'\r'w=t<8^#%0C=w]&=oY(vXU]tP{`3gs13QSjFu6}OZP:P") (str.to.re "HrEj;[U<}E'\r'11IZWx2G'\t'r1!222333"))))))
(assert (= 15 (str.to.int x)))
(check-sat)
(get-model)