##=== (seq.write seq i str) write a string str to the i-th position of a sequence seq and return the updated sequence
# (seq.write (Seq String) Int String (Seq String))

##=== (seq.filter seq regex) returns a sequence of all elements in seq that match the regex
# (seq.filter (Seq String) RegLan (Seq String))

##=== (seq.join seq sep) returns a string that is the result of joining all elements in seq with the separator sep
# (seq.join (Seq String) String)

# (str.split str sep) returns a sequence of strings obtained by splitting str using the separator sep
# (str.split String (Seq String))

##=== (str.match_all str regex) returns a sequence of all matches of regex in str
# (str.match_all String RegLan (Seq String))


###--- For sequence operations and the extend operations above, I want to use string operations to encode them.
###--- First, I will define a string to represent a sequence of strings. The string will be a #-separated list of strings. For example, the sequence ["a", "b", "c"] will be represented as "#a#b#c". Note that "" is empty sequence while "#" is the sequence [""]

##=== (declare-const seq (Seq String))
# (declare-const seq String)
# (define-fun is_seq_re () RegLan (re.* (re.++ (str.to_re "#") re.all)))
# (assert (str.in_re is_seq_re))

##=== (seq.++ (seq1 seq2))
# (str.++ seq1 seq2)

##=== (seq.len seq)
# (declare-const seq_len_help String)
# (assert (= seq_len_help (str.replace_all seq (re.comp (is_seq_re) ""))))
# (define-fun seq_len ((seq String)) (str.len seq_len_help))

##=== (seq.at seq offset)
# (declare-const seq_at_help_before String)
# (declare-const seq_at_help_after String)
# (declare-const seq_at_help_offset String)

# (assert (= seq (str.++ seq_at_help_before seq_at_help_offset seq_at_help_after)))

# (assert (str.in_re seq_at_help_before is_seq_re))
# (assert (str.in_re seq_at_help_after is_seq_re))
# (assert (str.in_re seq_at_help_offset is_seq_re))
# (assert (= (seq_len seq_at_help_before) offset))
# (define-fun seq_at ((seq String) (offset Int)) seq_at_help_offset)

##=== (seq.nth seq offset)
# (declare-const seq_nth_help)
# (assert (= (str.++ "#" seq_nth_help) (seq_at seq offset)))

##=== (seq.write seq i str)
# (declare-const seq_write_help_before String)
# (declare-const seq_write_help_after String)
# (declare-const seq_write_help_offset String)

# (assert (= seq (str.++ seq_write_help_before seq_write_help_offset seq_write_help_after)))

# (assert (str.in_re seq_write_help_before is_seq_re))
# (assert (str.in_re seq_write_help_after is_seq_re))
# (assert (str.in_re seq_write_help_offset is_seq_re))
# (assert (= (seq_len seq_write_help_before) offset))
# (define-fun seq_write ((seq String) (offset Int) (str String)) (str.++ seq_write_help_before str seq_write_help_after))

##=== (seq.filter seq regex) 
##=== this is a transducer indeed, we can only apply the filter to a fixed times, which is 3 here



##=== (str.split str sep)
# (define-fun str_split ((str String) (sep String)) 
#   (str.++ "#" (str.replace_all str sep "#"))
# )

##=== (str.join str sep)
# (declare-const str_join_help String)
# (assert (= str (str.++ "#" str_join_help)))


