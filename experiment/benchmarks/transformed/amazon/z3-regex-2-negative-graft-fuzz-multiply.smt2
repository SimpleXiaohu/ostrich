(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "]]ooDDPP'''\t''\t'''aassLL'''\n''\n'''""""bbbb") re.allchar)))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "RR..--") (re.++ (str.to.re "aaaa") re.allchar)) re.allchar))))
(check-sat)
(get-model)