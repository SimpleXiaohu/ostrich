(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "_:' '@DO'\x0b'y!We") re.allchar)))
(assert (not (str.in.re S (re.union re.allchar (re.++ (str.to.re "UQe") (re.union (str.to.re "^") re.allchar))))))
(check-sat)
(get-model)