(declare-const x String)
(assert (= x "'' 'bB'\t''\x0b'LEdUsJV?~'\x0b'M(6g0l*btx(7*n0YR)R)|*UmoSLHg7=t6L&4tCT8dZ$CLKraSFP~M]`N7ND1>A3'\t'0.H}KZ9e]'\x0c'IE1EAbP}s*}md.2cd"))
(assert (str.in.re x (str.to.re "HdHQdF;")))
(check-sat)
(get-model)