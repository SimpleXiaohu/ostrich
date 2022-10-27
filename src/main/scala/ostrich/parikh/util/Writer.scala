package ostrich.parikh.writer

import uuverifiers.common.Tracing
import uuverifiers.catra.SolveRegisterAutomata
import java.io.{File, BufferedWriter, FileWriter}

trait Writer {

  val filename: String

  val file = new File(filename)

  val writer = new BufferedWriter(new FileWriter(file))

  def write(s: String) = writer.write(s)

  def newline() = writer.newLine()

  def close() = writer.close()

  def delete() = {
    if (file.delete()) Console.err.println(s"Delete file $filename")
    else Console.err.println(s"Failed to delete file $filename")
  }

}

class Logger(override val filename: String) extends Writer {
  def log(s: String) = {
    write(s)
    newline()
  }
}

class CatraWriter(override val filename: String) extends Writer 