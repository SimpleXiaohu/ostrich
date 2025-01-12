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
(declare-fun s () String)


(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 6  )  ) ( - ( str.to_int ( str.substr ( str.at s 6  ) 1 ( - ( str.len ( str.at s 6  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 6  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 6  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 6  ) 1 ( - ( str.len ( str.at s 6  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 6  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 6  )  )  ) false true  )  ))

(assert (not ( = ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )))

(assert ( >= ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) 10  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) 27  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 1  ))

(assert (not ( = ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 0  )))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 5  )  ) ( - ( str.to_int ( str.substr ( str.at s 5  ) 1 ( - ( str.len ( str.at s 5  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 5  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 5  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 5  ) 1 ( - ( str.len ( str.at s 5  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 5  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 5  )  )  ) false true  )  ))

(assert (not ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) 27  )))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ))

(assert (not ( = ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 0  )))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 4  )  ) ( - ( str.to_int ( str.substr ( str.at s 4  ) 1 ( - ( str.len ( str.at s 4  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 4  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 4  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 4  ) 1 ( - ( str.len ( str.at s 4  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 4  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 4  )  )  ) false true  )  ))

(assert (not ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) 27  )))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ))

(assert (not ( = ( + ( + ( + 0 1  ) 1  ) 1  ) 0  )))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 3  )  ) ( - ( str.to_int ( str.substr ( str.at s 3  ) 1 ( - ( str.len ( str.at s 3  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 3  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 3  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 3  ) 1 ( - ( str.len ( str.at s 3  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 3  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 3  )  )  ) false true  )  ))

(assert (not ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  )  ) 27  )))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ))

(assert (not ( = ( + ( + 0 1  ) 1  ) 0  )))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 2  )  ) ( - ( str.to_int ( str.substr ( str.at s 2  ) 1 ( - ( str.len ( str.at s 2  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 2  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 2  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 2  ) 1 ( - ( str.len ( str.at s 2  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 2  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 2  )  )  ) false true  )  ))

(assert (not ( = ( + ( + 0 1  ) 1  ) 1  )))

(assert ( >= ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  )  ) 10  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  )  ) 27  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + ( + 0 1  ) 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + ( + 0 1  ) 1  ) 1  ))

(assert (not ( = ( + 0 1  ) 0  )))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 1  )  ) ( - ( str.to_int ( str.substr ( str.at s 1  ) 1 ( - ( str.len ( str.at s 1  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 1  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 1  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 1  ) 1 ( - ( str.len ( str.at s 1  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 1  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 1  )  )  ) false true  )  ))

(assert ( = ( + 0 1  ) 1  ))

(assert ( >= ( ite ( str.prefixof "-" ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  )  ) 10  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( < ( ite ( str.prefixof "-" ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) ( - ( str.to_int ( str.substr ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  )  )  ) ( str.to_int ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  )  ) 27  ))

(assert ( ite ( str.prefixof "-" ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  ) 1 ( - ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.substr s ( - ( + 0 1  ) 1  ) ( - ( + ( + 0 1  ) 1  ) ( - ( + 0 1  ) 1  )  )  )  )  ) false true  )  ))

(assert ( >= ( + 0 1  ) 1  ))

(assert ( = 0 0  ))

(assert ( not ( = ( ite ( str.prefixof "-" ( str.at s 0  )  ) ( - ( str.to_int ( str.substr ( str.at s 0  ) 1 ( - ( str.len ( str.at s 0  )  ) 1  )  )  )  ) ( str.to_int ( str.at s 0  )  )  ) 0  )  ))

(assert ( ite ( str.prefixof "-" ( str.at s 0  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at s 0  ) 1 ( - ( str.len ( str.at s 0  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at s 0  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at s 0  )  )  ) false true  )  ))

(assert (not ( >= 0 1  )))

(assert (not ( = ( str.len s  ) 0  )))
(assert ( = ( + ( + ( + ( + ( + ( + 0 1  ) 1  ) 1  ) 1  ) 1  ) 1  ) 0  ))


(check-sat)

(exit)
