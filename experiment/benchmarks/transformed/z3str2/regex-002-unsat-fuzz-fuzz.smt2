(declare-const x String)
(declare-const y String)
(assert (= x "''\x0b'<'C6\\p@Tf'\r'c'\x0b'8yH0t?gCaNFx|[+]%T_v`!wr$!x7osPmy>r<IX\\?cX'' '>'TmZ[kmc*LEB+m' '$:sD+G-;_L&,bb}kCR'Su2[R*.$x'e5Is?j?R'\n'EpL!;*'\r'a"))
(assert (str.in.re x (re.* (str.to.re "'\n''SK0T"))))
(check-sat)
(get-model)