(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "Rzc7,a}O7dAdf7webQF('\n'O{P") (str.to.re "1112i=0W/U2Y36#T!3")))))
(assert (= 6 (str.len x)))
(assert (not (= x "11@k5hQWc$y'\x0b'rzCM' 'DQwC'~*2222'\x0c'-xj*-oX7AAAAB' 'kao5dr0kN7s!;q2")))
(check-sat)
(get-model)