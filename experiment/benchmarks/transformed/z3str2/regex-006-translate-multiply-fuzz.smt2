(declare-const x String)
(declare-const y String)
(assert (= x "%'\t'D{$NmOK`]~m)' 'Q\\GzFkc]=.$9r$~kyBoX"))
(assert (str.in.re x (re.* (re.+ (str.to.re "$#_ZG=k'\x0b'3o")))))
(check-sat)
(get-model)