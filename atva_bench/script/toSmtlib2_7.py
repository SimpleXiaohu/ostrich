##=== (seq.write seq i str) write a string str to the i-th position of a sequence seq and return the updated sequence

##=== (seq.filter seq regex) returns a sequence of all elements in seq that match the regex

##=== (seq.join seq sep) returns a string that is the result of joining all elements in seq with the separator sep

# (str.split str sep) returns a sequence of strings obtained by splitting str using the separator sep

##=== (str.match_all str regex) returns a sequence of all matches of regex in str


###--- For sequence operations and the extend operations above, I want to use string operations to encode them.
###--- First, I will define a string to represent a sequence of strings. The string will be a #-separated list of strings. For example, the sequence ["a", "b", "c"] will be represented as "#a#b#c". Note that "" is empty sequence while "#" is the sequence [""]

##=== (declare-const seq (Seq String))
# (declare-const seq String)
# (define-fun is_seq_re () RegLan (re.* (re.++ (str.to_re "#") re.all)))
# (assert (str.in_re seq is_seq_re))

##=== (declare-const str String)
# (define-fun is_str_re () RegLan (re.comp is_seq_re)
# (assert (str.in_re str is_str_re))

##=== (seq.++ (seq1 seq2))
# (str.++ seq1 seq2)

##=== (seq.len seq)
# (define-fun seq_len ((seq String)) Int
#   (let ((seq_len_help (str.replace_re_all seq is_str_re "")))
#     (str.len seq_len_help)
#   )
# )

##=== (seq.at seq offset)
# (declare-fun seq_at_before (String Int) String)
# (declare-fun seq_at_in (String Int) String)
# (declare-fun seq_at_after (String Int) String)
# (define-fun seq_at ((seq String) (i Int)) String
#   (ite 
#     (and (str.in_re (seq_at_before seq i) is_seq_re) (str.in_re (seq_at_in seq i) is_seq_re) (str.in_re (seq_at_after seq i) is_seq_re))
#     (ite 
#       (and (= i (seq_len (seq_at_before seq i))) (= seq (str.++ (seq_at_before seq i) (seq_at_in seq i) (seq_at_after seq i))))
#       (seq_at_in seq i)
#       ""
#     )
#     ""
#   )
# )

##=== (seq.nth seq offset)
# (define-fun seq_nth ((seq String) (i Int)) String
#   (let ((seq_nth_help (seq_at seq i)))
#     (str.substr seq_nth_help 1 (str.len seq_nth_help))
#   )
# )

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

##=== (str.split str sep)
# (define-fun str_split ((str String) (sep String)) 
#   (str.++ "#" (str.replace_all str sep "#"))
# )

##=== (str.join str sep)
# (define-fun seq_join ((seq String) (sep String)) String 
#   (let 
#     ((join_help (str.substr seq 1 (str.len seq))))   ; remove the first sequence splitter
#     (str.replace_all join_help "#" sep)
#   )
# )

##=== the seq.filter and str.match_all can not be encoded by string operations so we do not translate them on purpose to make solvers return unknown

import re, argparse

def translateStrDeclare(smtStr: str) -> str :
  strDeclarRE = r'\(declare-const\s+(\w+)\s+String\)'
  return re.sub(strDeclarRE, r'(declare-const \1 String)\n(assert (str.in_re \1 is_str_re))', smtStr)

def translateSeqDeclare(smtStr: str) -> str :
  seqDeclareRE = r'\(declare-const\s+(\w+)\s+\(Seq\s+String\)\)'
  return re.sub(seqDeclareRE, r'(declare-const \1 String)\n(assert (str.in_re \1 is_seq_re))', smtStr)

def translateSeqUnit(smtStr: str) -> str :
  seqUnitRE = r'\(seq\.unit\s+\"(\w+)\"\)'
  return re.sub(seqUnitRE, r'(str.++ seq_spliter "\1")', smtStr)

def translateSeqWrite(smtStr: str) -> str :
  seqWriteRE = r'seq\.write'
  return re.sub(seqWriteRE, r'seq_write', smtStr)

def translateSeqNth(smtStr: str) -> str :
  seqNthRE = r'seq\.nth'
  return re.sub(seqNthRE, r'seq_nth', smtStr)

def translateSeqAt(smtStr: str) -> str :
  seqAtRE = r'seq\.at'
  return re.sub(seqAtRE, r'seq_at', smtStr)

def translateSeqLen(smtStr: str) -> str :
  seqLenRE = r'seq\.len'
  return re.sub(seqLenRE, r'seq_len', smtStr)

def translateSeqJoin(smtStr: str) -> str :
  seqJoinRE = r'seq\.join'
  return re.sub(seqJoinRE, r'seq_join', smtStr)

def translateStrSplit(smtStr: str) -> str :
  strSplitRE = r'str\.split'
  return re.sub(strSplitRE, r'str_split', smtStr)

def translateSeqConcat(smtStr: str) -> str :
  seqConcatRE = r'seq\.\+\+'
  return re.sub(seqConcatRE, r'str.++', smtStr)

def removeSetLogic(smtStr: str) -> str :
  setLogicRE = r'\(set-logic\s+\w+\)'
  return re.sub(setLogicRE, '', smtStr)

def addSetLogicHeader(smtStr: str) -> str :
  setLogic = '(set-logic QF_ALL)\n'
  return setLogic + smtStr

def addStrSpliterHeader(smtStr: str) -> str :
  strSpliter = '(define-fun seq_spliter () String "#")\n'
  return strSpliter + smtStr

def addSeqRegexHeader(smtStr: str) -> str :
  seqRegex = '(define-fun is_seq_re () RegLan (re.* (re.++ (str.to_re seq_spliter) re.all)))\n'
  return seqRegex + smtStr

def addStrRegexHeader(smtStr: str) -> str :
  strRegex = '(define-fun is_str_re () RegLan (re.comp is_seq_re))\n'
  return strRegex + smtStr

def addSeqLenHeader(smtStr: str) -> str :
  seqLen = (
    '(define-fun seq_len ((seq String)) Int\n',
    '  (let\n',
    '    ((seq_len_help (str.replace_re_all seq is_str_re "")))\n',
    '    (str.len seq_len_help)\n',
    '  )\n',
    ')\n'
  )
  return ''.join(seqLen) + smtStr
  
    

parser = argparse.ArgumentParser(description="Translate sequence operations to string operations")
parser.add_argument("filename", type=str, help="The input file name")
args = parser.parse_args()

def translate(file: str):
  with open(file, 'r') as f:
    smtStr = f.read()

  # Translate sequence operations to string operations
  smtStr = translateStrDeclare(smtStr) 
  smtStr = translateSeqDeclare(smtStr)
  smtStr = translateSeqUnit(smtStr)
  smtStr = translateSeqWrite(smtStr)
  smtStr = translateSeqNth(smtStr)
  smtStr = translateSeqConcat(smtStr)
  smtStr = translateSeqAt(smtStr)
  smtStr = translateSeqLen(smtStr)
  smtStr = translateSeqJoin(smtStr)
  smtStr = translateStrSplit(smtStr)
  smtStr = removeSetLogic(smtStr)
  smtStr = addSeqLenHeader(smtStr)
  print(smtStr)

translate(args.filename)



