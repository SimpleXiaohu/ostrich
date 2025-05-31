##=== (seq.write seq i str)
# (define-fun seq_write ((seq (Seq String)) (i Int) (str String)) (Seq String)
#   (seq.update seq i (seq.unit str))
# )

import re, argparse, os
def translateSeqWrite(smtStr: str) -> str :
  seqWriteRE = r'seq\.write'
  return re.sub(seqWriteRE, r'seq_write', smtStr)


def removeSetLogic(smtStr: str) -> str :
  setLogicRE = r'\(set-logic\s+\w+\)'
  return re.sub(setLogicRE, '', smtStr)

def removeGetModel(smtStr: str) -> str :
  getModelRE = r'\(get-model\)'
  return re.sub(getModelRE, '', smtStr)

def addSetLogicHeader(smtStr: str) -> str :
  setLogicHeader = "(set-logic ALL)\n"
  return setLogicHeader + smtStr

def addSeqWriteHeader(smtStr: str) -> str :
  seqWriteHeader = (
    "(define-fun seq_write ((seq (Seq String)) (i Int) (str String)) (Seq String)\n",
    "  (seq.update seq i (seq.unit str))\n",
    ")\n"
  )
  return "".join(seqWriteHeader) + smtStr

def ostrichseq2cvc5seq(smtStr: str) -> str :
  smtStr = removeSetLogic(smtStr)
  smtStr = removeGetModel(smtStr)
  smtStr = addSeqWriteHeader(smtStr)
  smtStr = addSetLogicHeader(smtStr)
  smtStr = translateSeqWrite(smtStr)
  return smtStr

def translateSingleFile(file: str) -> None:
  with open(file, 'r') as f:
    smtStr = f.read()
  # Translate the file
  smtStr = ostrichseq2cvc5seq(smtStr)
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
    smtStr = ostrichseq2cvc5seq(smtStr)  
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