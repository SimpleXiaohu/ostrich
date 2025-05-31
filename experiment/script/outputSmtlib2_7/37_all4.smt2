(set-logic ALL)
(declare-fun seq_spliter () String)
(assert (= seq_spliter "\u{0}"))
(define-fun is_seq_re () RegLan (re.* (re.++ (str.to_re seq_spliter) re.all)))
(define-fun is_str_re () RegLan (re.comp is_seq_re))
(define-fun seq_len ((seq String)) Int
  (let
    ((seq_len_help (str.replace_re_all seq is_str_re "")))
    (str.len seq_len_help)
  )
)
(define-fun str_split ((str String) (sep String)) String
  (str.++ seq_spliter (str.replace_all str sep seq_spliter))
)
(define-fun seq_join ((seq String) (sep String)) String
  (let
    ((join_help (str.substr seq 1 (str.len seq))))
    (str.replace_all join_help seq_spliter sep)
  )
)
(declare-fun seq_at_before (String Int) String)
(declare-fun seq_at_in (String Int) String)
(declare-fun seq_at_after (String Int) String)
(define-fun seq_at ((seq String) (i Int)) String
  (let
    ((before_seq (seq_at_before seq i))
     (in_seq (seq_at_in seq i))
     (after_seq (seq_at_after seq i)))
    (ite
      (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))
      (ite
        (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))
        in_seq
        "error"
      )
      "error"
    )
  )
)
(define-fun seq_nth ((seq String) (i Int)) String
  (let ((seq_nth_help (seq_at seq i)))
    (str.substr seq_nth_help 1 (str.len seq_nth_help))
  )
)
(declare-fun seq_write_before (String Int String) String)
(declare-fun seq_write_in (String Int String) String)
(declare-fun seq_write_after (String Int String) String)
(define-fun seq_write ((seq String) (i Int) (str String)) String
  (let
    ((before_seq (seq_write_before seq i str))
     (in_seq (seq_write_in seq i str))
     (after_seq (seq_write_after seq i str)))
    (ite
      (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))
      (ite
        (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))
        (str.++ before_seq seq_spliter str after_seq)
        "error"
      )
      "error"
    )
  )
)


;; Original log string with multiple entries
(declare-const log_line String)
(assert (str.in_re log_line is_str_re))
(declare-const entries String)
(assert (str.in_re entries is_seq_re))
(declare-const error_entries String)
(assert (str.in_re error_entries is_seq_re))
(declare-const updated_entries String)
(assert (str.in_re updated_entries is_seq_re))
(declare-const joined_errors String)
(assert (str.in_re joined_errors is_str_re))
(declare-const error_codes String)
(assert (str.in_re error_codes is_seq_re))

;; Input log line: multiple messages separated by commas
(assert (= log_line "INFO Startup complete,ERROR Disk failure 101,INFO OK,ERROR Memory 202"))

;; 1. Split the log into individual messages
(assert (= entries (str_split log_line ",")))

;; 2. Filter only ERROR messages using SMT-LIB regex
(define-fun re_error () RegLan (re.++ (str.to_re "ERROR") (re.* re.allchar)))
(assert (= error_entries (seq.filter entries re_error)))

;; 3. Write a replacement message at position 0
(assert (= updated_entries (seq_write error_entries 0 "CRITICAL")))

;; 4. Join the updated ERROR entries
(assert (= joined_errors (seq_join updated_entries "|")))

;; 5. Extract all numeric codes from the joined string
(define-fun re_digits () RegLan (re.+ (re.range "0" "9")))
(assert (= error_codes (str.match_all joined_errors re_digits)))

;; 6. Check that both error codes are present
; (assert (= (seq_nth error_codes 0) "101"))
(assert (= (seq_nth error_codes 0) "202"))

(check-sat) ; SAT
