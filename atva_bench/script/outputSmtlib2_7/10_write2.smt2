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


(declare-const seq1 String)
(assert (str.in_re seq1 is_seq_re))
(declare-const seq2 String)
(assert (str.in_re seq2 is_seq_re))

(assert (= seq1 (str.++ (str.++ seq_spliter "foo") (str.++ seq_spliter "bar"))))
(assert (= seq2 (seq_write seq1 1 "baz")))

; Contradiction: we wrote "baz" at index 1, but then claim it’s still "bar"
(assert (= (seq_nth seq2 1) "bar"))

(check-sat)