(declare-const x String)
(declare-const y String)
(assert (= x "|>-n6YJ-9#6njo\\<U6'\x0b'aZ'\t'h"))
(assert (str.in.re x (re.+ (re.+ (str.to.re ")_S<' 'X")))))
(check-sat)
(get-model)