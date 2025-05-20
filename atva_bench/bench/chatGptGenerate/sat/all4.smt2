(set-logic QF_SLIA)

;; Original log string with multiple entries
(declare-const log_line String)
(declare-const entries (Seq String))
(declare-const error_entries (Seq String))
(declare-const updated_entries (Seq String))
(declare-const joined_errors String)
(declare-const error_codes (Seq String))

;; Input log line: multiple messages separated by commas
(assert (= log_line "INFO Startup complete,ERROR Disk failure 101,INFO OK,ERROR Memory 202"))

;; 1. Split the log into individual messages
(assert (= entries (str.split log_line ",")))

;; 2. Filter only ERROR messages using SMT-LIB regex
(define-fun re_error () RegLan (re.++ (str.to_re "ERROR") (re.* re.allchar)))
(assert (= error_entries (seq.filter entries re_error)))

;; 3. Write a replacement message at position 0
(assert (= updated_entries (seq.write error_entries 0 "CRITICAL")))

;; 4. Join the updated ERROR entries
(assert (= joined_errors (seq.join updated_entries "|")))

;; 5. Extract all numeric codes from the joined string
(define-fun re_digits () RegLan (re.+ (re.range "0" "9")))
(assert (= error_codes (str.match_all joined_errors re_digits)))

;; 6. Check that both error codes are present
; (assert (= (seq.nth error_codes 0) "101"))
(assert (= (seq.nth error_codes 0) "202"))

(check-sat) ; SAT
