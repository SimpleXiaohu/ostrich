(set-logic QF_SLIA)

; Declare constants
(declare-const input String)
(declare-const words (Seq String))
(declare-const filteredWords (Seq String))
(declare-const result String)

; Example input string: " hello , world ,  ,  test "
(assert (= input "hello,world,  ,test"))

; Split input string by ","
(assert (= words (str.split input ",")))

; Filter out empty strings from the sequence using a regex that matches non-whitespace characters
(define-fun non_empty_re () RegLan
  (re.+ (re.range "a" "z")))

(assert (= filteredWords (seq.filter words non_empty_re)))

; Join the filtered words into a single string with a separator
(assert (= result (seq.join filteredWords ",")))

; Expected result: "hello,world,test"
(assert (= result "hello,world,test"))

; Check satisfiability
(check-sat)
(get-model)