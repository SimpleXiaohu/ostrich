package ostrich.cesolver.automata

import ostrich.OstrichStringTheory
import ostrich.automata.AutDatabase
import ostrich.automata.Automaton
import ostrich.cesolver.util.ParikhUtil
import ostrich.OFlags

class CEAutDatabase(theory: OstrichStringTheory, flags: OFlags)
    extends AutDatabase(theory, flags.minimizeAutomata) {

  override val regex2Aut = new Regex2CEAut(theory, flags)

  override def id2ComplementedAutomaton(id: Int): Option[Automaton] =
    synchronized {
      (id2CompAut get id) match {
        case r @ Some(_) => r
        case None =>
          (id2Regex get id) match {
            case Some(regex) => {
              val aut =
                regex2Aut.buildComplementAut(regex, flags.minimizeAutomata)
              id2CompAut.put(id, aut)
              Some(aut)
            }
            case None =>
              None
          }
      }
    }

}
