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


(declare-const input String)
(assert (str.in_re input is_seq_re))
(declare-const filtered String)
(assert (str.in_re filtered is_seq_re))

(assert (= input (str.++ (str.++ seq_spliter "123") (str.++ seq_spliter "abc") (str.++ seq_spliter "xyz"))))

; Regex to match digits
(define-fun digit_re () RegLan (re.range "0" "9"))

; Should only keep "123"
(assert (= filtered (seq.filter input digit_re)))

; Contradiction: filtered must contain "123", but we say it's not there
(assert (not (= (seq_nth filtered 0) "123")))

(check-sat)