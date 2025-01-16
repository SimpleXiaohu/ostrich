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
import tools.z3noodler
import tools.z3alpha
import tools.trau
# benchmarks
from models import test
from models import cav2025

tracks = (
    test.getTrackData()
) + []

solvers = {}
for s in [
    # tools.cvc5,
    # tools.regExSolver,
    # tools.oldOstrich,
    # tools.ostrichHeuristics,
    # tools.z3noodler,
    # tools.z3alpha
    tools.trau,
]:
    s.addRunner(solvers)

timeout = 60
ploc = utils.JSONProgramConfig()

store = storage.SQLiteDB("cav2025-trau")
summaries = [summarygenerators.terminalResult, store.postTrackUpdate]
# verifiers = ["Cvc5"]
verifiers = [""]
testrunner(12).runTestSetup(
    tracks, solvers, voting.MajorityVoter(), summaries, store, timeout, ploc, verifiers
)
startwebserver.Server(store.getDB()).startServer()
