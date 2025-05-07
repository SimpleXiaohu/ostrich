#!/usr/bin/python

from runners.multi import TheRunner as testrunner
import utils,storage, summarygenerators
import voting.majority as voting
import startwebserver
# tools
import tools.cvc5
import tools.regExSolver
import tools.oldOstrich
import tools.ostrichHeuristics
import tools.ostrichHeuristics32
import tools.z3noodler
import tools.z3alpha
import tools.z3
import tools.ostrich_CEA_ADT
# benchmarks
from models import fmcad

tracks = (
    fmcad.getTrackData()
) + []

solvers = {}
for s in [
    tools.cvc5,
    tools.z3,
    tools.z3alpha,
    tools.z3noodler,
    tools.regExSolver,
    tools.oldOstrich,
    tools.ostrichHeuristics,
    tools.ostrich_CEA_ADT
]:
    s.addRunner(solvers)

timeout = 60
ploc = utils.JSONProgramConfig()

store = storage.SQLiteDB("fmcad")
summaries = [summarygenerators.terminalResult, store.postTrackUpdate]
verifiers = ["Cvc5"]
testrunner(12).runTestSetup(
    tracks, solvers, voting.MajorityVoter(), summaries, store, timeout, ploc, verifiers
)
startwebserver.Server(store.getDB()).startServer()
