#!/usr/bin/python

from runners.multi import TheRunner as testrunner
import utils
import storage
import voting.majority as voting

import models.tmp as tmp
import models.smt_lib_QFS_random as smt_lib_QFS_random

import startwebserver

import tools.ostrichCEA
import tools.cvc5


import summarygenerators

tracks = (
    smt_lib_QFS_random.getTrackData()
) + []

solvers = {}
for s in [
    tools.cvc5,
    tools.ostrichCEA,
]:
    s.addRunner(solvers)

summaries = [summarygenerators.terminalResult]
timeout = 60
ploc = utils.JSONProgramConfig()

store = storage.SQLiteDB("smt-comp-2023")
summaries = [summarygenerators.terminalResult, store.postTrackUpdate]
verifiers = ["Cvc5"]
testrunner(12).runTestSetup(
    tracks, solvers, voting.MajorityVoter(), summaries, store, timeout, ploc, verifiers
)
startwebserver.Server(store.getDB()).startServer()
