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
(declare-fun num1 () String)
(declare-fun num2 () String)


(assert (not ( >= ( + ( - ( - ( - ( - (- 1) 1  ) 1  ) 1  ) 1  ) ( str.len num2  )  ) 0  )))

(assert (not ( >= ( + ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  ) ( - ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 4)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  ) 1  )  )  )  ) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  )  ) 0  ) 10  )))

(assert ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 4)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 4)  )  )  )  ) false true  )  ))

(assert ( >= ( + ( - ( - ( - (- 1) 1  ) 1  ) 1  ) ( str.len num2  )  ) 0  ))

(assert (not ( >= ( + ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  ) ( - ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 3)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  ) 1  )  )  )  ) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  )  ) 1  ) 10  )))

(assert ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 3)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 3)  )  )  )  ) false true  )  ))

(assert ( >= ( + ( - ( - (- 1) 1  ) 1  ) ( str.len num2  )  ) 0  ))

(assert ( >= ( + ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  ) ( - ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 2)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  ) 1  )  )  )  ) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  )  ) 1  ) 10  ))

(assert ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 2)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 2)  )  )  )  ) false true  )  ))

(assert ( >= ( + ( - (- 1) 1  ) ( str.len num2  )  ) 0  ))

(assert (not ( >= ( + ( - (- 1) 1  ) ( str.len num1  )  ) 0  )))

(assert (not ( >= ( + ( - (- 1) 1  ) ( ite ( < ( str.len num1  ) ( str.len num2  )  ) ( str.len num1  ) ( str.len num2  )  )  ) 0  )))

(assert ( >= ( + ( + ( ite ( str.prefixof "-" ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  ) ( - ( str.to_int ( str.substr ( str.at num1 ( + ( str.len num1  ) (- 1)  )  ) 1 ( - ( str.len ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  ) 1  )  )  )  ) ( str.to_int ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  )  ) ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  ) ( - ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 1)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  ) 1  )  )  )  ) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  )  )  ) 0  ) 10  ))

(assert ( ite ( str.prefixof "-" ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at num2 ( + ( str.len num2  ) (- 1)  )  ) 1 ( - ( str.len ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at num2 ( + ( str.len num2  ) (- 1)  )  )  )  ) false true  )  ))

(assert ( ite ( str.prefixof "-" ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr ( str.at num1 ( + ( str.len num1  ) (- 1)  )  ) 1 ( - ( str.len ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  ) 1  )  )  )  ) false true  ) ( > ( str.len ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  ) 1  )  ) ( ite ( = (- 1) ( str.to_int ( str.at num1 ( + ( str.len num1  ) (- 1)  )  )  )  ) false true  )  ))

(assert ( >= ( + (- 1) ( ite ( < ( str.len num1  ) ( str.len num2  )  ) ( str.len num1  ) ( str.len num2  )  )  ) 0  ))

(assert (not ( <= ( ite ( str.prefixof "-" num2  ) ( - ( str.to_int ( str.substr num2 1 ( - ( str.len num2  ) 1  )  )  )  ) ( str.to_int num2  )  ) 0  )))

(assert ( ite ( str.prefixof "-" num2  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr num2 1 ( - ( str.len num2  ) 1  )  )  )  ) false true  ) ( > ( str.len num2  ) 1  )  ) ( ite ( = (- 1) ( str.to_int num2  )  ) false true  )  ))

(assert (not ( = ( str.len num2  ) 0  )))

(assert (not ( <= ( ite ( str.prefixof "-" num1  ) ( - ( str.to_int ( str.substr num1 1 ( - ( str.len num1  ) 1  )  )  )  ) ( str.to_int num1  )  ) 0  )))

(assert ( ite ( str.prefixof "-" num1  ) ( and ( ite ( = (- 1) ( str.to_int ( str.substr num1 1 ( - ( str.len num1  ) 1  )  )  )  ) false true  ) ( > ( str.len num1  ) 1  )  ) ( ite ( = (- 1) ( str.to_int num1  )  ) false true  )  ))

(assert (not ( = ( str.len num1  ) 0  )))
(assert ( not ( = 0 0  )  ))


(check-sat)

(exit)
