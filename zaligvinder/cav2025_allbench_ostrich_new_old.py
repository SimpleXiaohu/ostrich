#!/usr/bin/python

from runners.multi import TheRunner as testrunner
import tools.oldOstrich_CEA_ADT
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
# benchmarks
from models import test
from models import cav2025
from models.cav2025 import random2000
from models.cav2025 import random500
from models.cav2025 import smtcomp2024

tracks = (
    smtcomp2024.getTrackData()
) + []

solvers = {}
for s in [
    tools.oldOstrich,
    tools.ostrichHeuristics,
]:
    s.addRunner(solvers)

timeout = 60
ploc = utils.JSONProgramConfig()

store = storage.SQLiteDB("cav2025-smtallbench-old-new-ostrich")
summaries = [summarygenerators.terminalResult, store.postTrackUpdate]
# verifiers = ["Cvc5"]
verifiers = [""]
testrunner(12).runTestSetup(
    tracks, solvers, voting.MajorityVoter(), summaries, store, timeout, ploc, verifiers
)
startwebserver.Server(store.getDB()).startServer()
