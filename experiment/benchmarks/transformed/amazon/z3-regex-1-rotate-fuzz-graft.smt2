(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "!9paby^|Mbg?>use") re.allchar))))
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "''\x0b''<") (str.to.re "o")))))
(check-sat)
(get-model)
(get-info :reason-unknown)