(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ y x) (str.++ n m)))
(assert (str.in.re n (re.+ (str.to.re "''=>ZaV~i9'0e'\x0b'4gH"".J#<]qwA'No""{"))))
(assert (> (str.to.int x) (str.len m)))
(check-sat)
(get-model)