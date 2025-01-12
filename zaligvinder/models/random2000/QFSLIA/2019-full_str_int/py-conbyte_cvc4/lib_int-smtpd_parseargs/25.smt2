(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Wei-Cheng Wu
Generated on: 2019-07-28
Generator: Py-Conbyte
Application: Concolic execution of Python code
Target solver: CVC4, Z3, Z3str3, Z3-Trau
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun arg1 () String)
(declare-fun arg2 () String)


(assert (not ( < ( str.indexof "localhost:8025" ":" 0  ) 0  )))

(assert ( ite ( str.prefixof "-" ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  ) 1 ( - ( str.len ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  )  )  ) false true  )  ))

(assert ( str.in_re ( str.substr arg1 ( + ( str.indexof arg1 ":" 0  ) 1  ) ( - ( str.len arg1  ) ( + ( str.indexof arg1 ":" 0  ) 1  )  )  ) ( re.+ ( re.range "0" "9"  )  )  ))

(assert (not ( < ( str.indexof arg1 ":" 0  ) 0  )))

(assert ( = ( str.len arg2  ) 0  ))

(assert (not ( = ( str.len arg1  ) 0  )))
(assert (not ( str.in_re ( str.substr "localhost:8025" ( + ( str.indexof "localhost:8025" ":" 0  ) 1  ) ( - ( str.len "localhost:8025"  ) ( + ( str.indexof "localhost:8025" ":" 0  ) 1  )  )  ) ( re.+ ( re.range "0" "9"  )  )  )))


(check-sat)

(exit)
