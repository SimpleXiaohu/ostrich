##=== (seq.write seq i str) write a string str to the i-th position of a sequence seq and return the updated sequence

##=== (seq.filter seq regex) returns a sequence of all elements in seq that match the regex

##=== (seq.join seq sep) returns a string that is the result of joining all elements in seq with the separator sep

# (str.split str sep) returns a sequence of strings obtained by splitting str using the separator sep

##=== (str.match_all str regex) returns a sequence of all matches of regex in str


###--- For sequence operations and the extend operations above, I want to use string operations to encode them.
###--- First, I will define a string to represent a sequence of strings. The string will be a #-separated list of strings. For example, the sequence ["a", "b", "c"] will be represented as "#a#b#c". Note that "" is empty sequence while "#" is the sequence [""]

##=== (declare-const seq (Seq String))
# (declare-const seq String)
# (define-fun is_seq_re () RegLan (re.* (re.++ (str.to_re seq_spliter) re.all)))
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

##=== (seq.write seq i str)
# (declare-fun seq_write_before (String Int String) String)
# (declare-fun seq_write_in (String Int String) String)
# (declare-fun seq_write_after (String Int String) String)
# (define-fun seq_write ((seq String) (i Int) (str String)) String
#   (let
#     ((before_seq (seq_write_before seq i str)) (in_seq (seq_write_in seq i str)) (after_seq (seq_write_after seq i str)))
#     (ite
#       (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))
#       (ite
#         (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))
#         (str.++ before_seq seq_spliter str after_seq)
#         "error"
#       )
#       "error"
#     )
#   )
# )

##=== (seq.at seq offset)
# (declare-fun seq_at_before (String Int) String)
# (declare-fun seq_at_in (String Int) String)
# (declare-fun seq_at_after (String Int) String)
# (define-fun seq_at ((seq String) (i Int)) String
#   (let 
#     ((before_seq (seq_at_before seq i)) (in_seq (seq_at_in seq i)) (after_seq (seq_at_after seq i)))
#     (ite
#       (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))
#       (ite
#         (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))
#         in_seq
#         "error"
#       )
#       "error"
#     )
#   )
# )


##=== (seq.nth seq offset)
# (define-fun seq_nth ((seq String) (i Int)) String
#   (let ((seq_nth_help (seq_at seq i)))
#     (str.substr seq_nth_help 1 (str.len seq_nth_help))
#   )
# )

##=== (str.split str sep)
# (define-fun str_split ((str String) (sep String)) String
#   (str.++ seq_spliter (str.replace_all str sep seq_spliter))
# )

##=== (str.join str sep)
# (define-fun seq_join ((seq String) (sep String)) String 
#   (let 
#     ((join_help (str.substr seq 1 (str.len seq))))   ; remove the first sequence splitter
#     (str.replace_all join_help seq_spliter sep)
#   )
# )

##=== the seq.filter and str.match_all can not be encoded by string operations so we do not translate them on purpose to make solvers return unknown

##=== axioms to ensure the correctness of the encoding
#= axiom of seq.write
# (assert 
#   (forall ((seq String) (i Int) (str String)) 
#     (str.in_re (seq_write seq i str) is_seq_re)
#   )
# )
#= axiom of seq.at
# (assert
#   (forall ((seq String) (i Int))
#     (str.in_re (seq_at seq i) is_seq_re)
#   )
# )
#= axiom of seq.nth
# (assert
#   (forall ((seq String) (i Int))
#     (str.in_re (seq_nth seq i) is_str_re)
#   )
# )
#= axiom of str.split
# (assert
#  (forall ((str String) (sep String))
#    (str.in_re (str_split str sep) is_seq_re)
#  )
# )
#= axiom of seq.join
# (assert
#   (forall ((seq String) (sep String))
#     (str.in_re (seq_join seq sep) is_str_re)
#   )
# )



import re, argparse, os

def translateStrDeclare(smtStr: str) -> str :
  strDeclareRE = r'\(declare-const\s+(\w+)\s+String\)'
  return re.sub(strDeclareRE, r'(declare-const \1 String)\n(assert (str.in_re \1 is_str_re))', smtStr)

def translateStrDeclare2(smtStr: str) -> str :
  strDeclareRE = r'\(declare-fun\s+(\w+)\s+\(\)\s+String\)'
  return re.sub(strDeclareRE, r'(declare-const \1 String)\n(assert (str.in_re \1 is_str_re))', smtStr)

def translateSeqDeclare(smtStr: str) -> str :
  seqDeclareRE = r'\(declare-const\s+(\w+)\s+\(Seq\s+String\)\)'
  return re.sub(seqDeclareRE, r'(declare-const \1 String)\n(assert (str.in_re \1 is_seq_re))', smtStr)

def translateSeqDeclare2(smtStr: str) -> str :
  seqDeclareRE = r'\(declare-fun\s+(\w+)\s+\(\)\s+\(Seq\s+String\)\)'
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

def removeGetModel(smtStr: str) -> str :
  getModelRE = r'\(get-model\)'
  return re.sub(getModelRE, '', smtStr)

def addSetLogicHeader(smtStr: str) -> str :
  setLogic = '(set-logic ALL)\n'
  return setLogic + smtStr

def addStrSpliterHeader(smtStr: str) -> str :
  strSpliter = (
    '(declare-fun seq_spliter () String)\n',
    '(assert (= seq_spliter "\\u{0}"))\n',
  )
  return "".join(strSpliter) + smtStr

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

def addSeqWriteHeader(smtStr: str) -> str :
  seqWrite = (
    '(declare-fun seq_write_before (String Int String) String)\n',
    '(declare-fun seq_write_in (String Int String) String)\n',
    '(declare-fun seq_write_after (String Int String) String)\n',
    '(define-fun seq_write ((seq String) (i Int) (str String)) String\n',
    '  (let\n',
    '    ((before_seq (seq_write_before seq i str))\n',
    '     (in_seq (seq_write_in seq i str))\n',
    '     (after_seq (seq_write_after seq i str)))\n',
    '    (ite\n',
    '      (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))\n',
    '      (ite\n',
    '        (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))\n',
    '        (str.++ before_seq seq_spliter str after_seq)\n',
    '        "error"\n',
    '      )\n',
    '      "error"\n',
    '    )\n',
    '  )\n',
    ')\n'
  )
  return ''.join(seqWrite) + smtStr
  
def addSeqAtHeader(smtStr: str) -> str :
  seqAt = (
    '(declare-fun seq_at_before (String Int) String)\n',
    '(declare-fun seq_at_in (String Int) String)\n',
    '(declare-fun seq_at_after (String Int) String)\n',
    '(define-fun seq_at ((seq String) (i Int)) String\n',
    '  (let\n',
    '    ((before_seq (seq_at_before seq i))\n',
    '     (in_seq (seq_at_in seq i))\n',
    '     (after_seq (seq_at_after seq i)))\n',
    '    (ite\n',
    '      (and (str.in_re before_seq is_seq_re) (str.in_re in_seq is_seq_re) (str.in_re after_seq is_seq_re))\n',
    '      (ite\n',
    '        (and (= i (seq_len before_seq)) (= 1 (seq_len in_seq)) (= seq (str.++ before_seq in_seq after_seq)))\n',
    '        in_seq\n',
    '        "error"\n',
    '      )\n',
    '      "error"\n',
    '    )\n',
    '  )\n',
    ')\n'
  )
  return ''.join(seqAt) + smtStr

def addSeqNthHeader(smtStr: str) -> str :
  seqNth = (
    '(define-fun seq_nth ((seq String) (i Int)) String\n',
    '  (let ((seq_nth_help (seq_at seq i)))\n',
    '    (str.substr seq_nth_help 1 (str.len seq_nth_help))\n',
    '  )\n',
    ')\n'
  )
  return ''.join(seqNth) + smtStr

def addSeqJoinHeader(smtStr: str) -> str :
  seqJoin = (
    '(define-fun seq_join ((seq String) (sep String)) String\n',
    '  (let\n',
    '    ((join_help (str.substr seq 1 (str.len seq))))\n',
    '    (str.replace_all join_help seq_spliter sep)\n',
    '  )\n',
    ')\n'
  )
  return ''.join(seqJoin) + smtStr

def addStrSplitHeader(smtStr: str) -> str :
  strSplit = (
    '(define-fun str_split ((str String) (sep String)) String\n',
    '  (str.++ seq_spliter (str.replace_all str sep seq_spliter))\n',
    ')\n'
  )
  return ''.join(strSplit) + smtStr

# def addStrSplitREHeader(smtStr: str) -> str :
#   strSplit = (
#     '(define-fun str_splitre ((str String) (sep RegLan)) String\n',
#     '  (str.++ seq_spliter (str.replace_re_all str sep seq_spliter))\n',
#     ')\n'
#   )
#   return ''.join(strSplit) + smtStr

def addAxioms(smtStr: str) -> str :
  axioms = (
    '(assert\n',
    '  (forall ((seq String) (i Int) (str String))\n',
    '    (str.in_re (seq_write seq i str) is_seq_re)\n',
    '  )\n',
    ')\n',
    '(assert\n',
    '  (forall ((seq String) (i Int))\n',
    '    (str.in_re (seq_at seq i) is_seq_re)\n',
    '  )\n',
    ')\n',
    '(assert\n',
    '  (forall ((seq String) (i Int))\n',
    '    (str.in_re (seq_nth seq i) is_str_re)\n',
    '  )\n',
    ')\n',
    '(assert\n',
    '  (forall ((str String) (sep String))\n',
    '    (str.in_re (str_split str sep) is_seq_re)\n',
    '  )\n',
    ')\n',
    '(assert\n',
    '  (forall ((seq String) (sep String))\n',
    '    (str.in_re (seq_join seq sep) is_str_re)\n',
    '  )\n',
    ')\n'
  )
  return ''.join(axioms) + smtStr
  
def ostrichseq2string(smtStr: str) -> str:
  # Translate sequence operations to string operations
  smtStr = translateStrDeclare(smtStr) 
  smtStr = translateStrDeclare2(smtStr)
  smtStr = translateSeqDeclare(smtStr)
  smtStr = translateSeqDeclare2(smtStr)
  smtStr = translateSeqUnit(smtStr)
  smtStr = translateSeqWrite(smtStr)
  smtStr = translateSeqNth(smtStr)
  smtStr = translateSeqConcat(smtStr)
  smtStr = translateSeqAt(smtStr)
  smtStr = translateSeqLen(smtStr)
  smtStr = translateSeqJoin(smtStr)
  smtStr = translateStrSplit(smtStr)
  smtStr = removeSetLogic(smtStr)
  smtStr = removeGetModel(smtStr)
  smtStr = addAxioms(smtStr)
  smtStr = addSeqWriteHeader(smtStr)
  smtStr = addSeqNthHeader(smtStr)
  smtStr = addSeqAtHeader(smtStr)
  smtStr = addSeqJoinHeader(smtStr)
  # smtStr = addStrSplitREHeader(smtStr)
  smtStr = addStrSplitHeader(smtStr)
  smtStr = addSeqLenHeader(smtStr)
  smtStr = addStrRegexHeader(smtStr)
  smtStr = addSeqRegexHeader(smtStr)
  smtStr = addStrSpliterHeader(smtStr)
  smtStr = addSetLogicHeader(smtStr)
  
  return smtStr
  
def translateSingleFile(file: str) -> None:
  with open(file, 'r') as f:
    smtStr = f.read()
  # Translate the file
  smtStr = ostrichseq2string(smtStr)
  print(smtStr)
  
def translateAllFiles(inputDir: str, outputDir: str) -> None:
  # Get all files recursively in the input directory
  files = []
  for root, dirs, filenames in os.walk(inputDir):
    for filename in filenames:
      if filename.endswith(".smt2"):
        files.append(os.path.join(root, filename))
 
  fileCount = 0
  for file in files:
    with open(file, 'r') as f:
      smtStr = f.read()
    # Translate each file
    smtStr = ostrichseq2string(smtStr)  
    # Write the translated string to a new file in the output directory
    filname = f'{fileCount}_' + os.path.basename(file)
    fileCount += 1
    output_file = os.path.join(outputDir, filname)
    with open(output_file, 'w') as f:
      f.write(smtStr)
    print(f"Translated {file} to {output_file} complete.")

if __name__ == "__main__":
  parser = argparse.ArgumentParser(description="Translate sequence operations to string operations")
  parser.add_argument("-f", "--filename", type=str, help="The file to translate", default=None)
  parser.add_argument("-o", "--output", type=str, help="The directory to save the output file", default="./outputSmtlib2_7")
  parser.add_argument("-rm", "--remove", action="store_true", help="Remove the output directory if it exists")
  parser.add_argument("-i", "--input", type=str, help="The directory to save the input file", default=None)
  args = parser.parse_args()
    

  # Translate 
  if args.filename:
    translateSingleFile(args.filename)
  elif args.input:
    # remove the output directory recursively if remove arg is true 
    if args.remove:
      if os.path.exists(args.output):
        import shutil
        shutil.rmtree(args.output)
        print(f"Removed the output directory {args.output} successfully.")
      else:
        print(f"The output directory {args.output} does not exist, no need to remove it.")
    # make the output directory if it does not exist
    if not os.path.exists(args.output):
      os.makedirs(args.output)
    translateAllFiles(args.input, args.output)
  else:
    print("Please provide a file or a directory to translate. Use -f file or -i dir.")




