(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "67V'\t'G^{") (str.to.re "I3")))))
(assert (= 15 (str.len x)))
(assert (not (= x "5X<'\r'sXkk1q8m-iH%BED3Y68'caoiZ;a""h9aP2kL~i/D3aDmkIa8J1y-MFG""RZI20rYLqW+'5'\t'=ox,OdK9%6z\\X=Q?>DY6{K)9FsQfrG='`w^OXA)'\x0b'P'\x0c'%o7Lo]'\x0b'c\\@~qU*o""cPt6.5Kvn4j\\9<g:8NR&$OrJ^{fiQ|D#oh'\t'r[^0>")))
(assert (not (= x "nE`*68&5s4Cco&y&Gp)<BVD:/I%<C&_!#$t{6%9)tdRQ6kV&qTH'g*'\n'9RA.etK'\t'?b`*?TPa<pyAt1}/F_K86pIwi!r:2Oa_VjSbwQ2kEr'\x0c'C+=7?#&}(>X~v?1:%g'\n'dZ[X<x;b^[VBWsd=ePbY' 'FF)L*t;'\t'nir2sqe3`' '0+'\r'XWYr?h_p5iDHc'\x0b''\t'`y3")))
(check-sat)
(get-model)