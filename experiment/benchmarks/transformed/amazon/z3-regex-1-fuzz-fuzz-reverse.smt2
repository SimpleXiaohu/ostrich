(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "|WdT''\t''''\n'')CzG+L''\x0b''Q7I'' ''yU7F.5/j?7jZK,:'}[CUDD,)I0:K") re.allchar))))
(assert (str.in.re S (re.++ re.allchar (re.union (re.++ re.allchar (str.to.re "a")) (str.to.re "X[^Z$''\x0b''%Q/3eF.93(.4w")))))
(check-sat)
(get-model)
(get-info :reason-unknown)