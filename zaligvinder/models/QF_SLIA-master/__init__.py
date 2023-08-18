def getTrackData (bname = None):
    import models.QF_SLIA-master.2015Norn
    import models.QF_SLIA-master.20180523Reynolds
    import models.QF_SLIA-master.2018Kepler
    import models.QF_SLIA-master.20190311strsmallrwNoetzli
    import models.QF_SLIA-master.2019fullstrint
    import models.QF_SLIA-master.2019Jiang
    import models.QF_SLIA-master.2019Leetcode
    import models.QF_SLIA-master.20230327stringfuzzlu
    import models.QF_SLIA-master.20230329denghang
    import models.QF_SLIA-master.20230329woorpjelu
    import models.QF_SLIA-master.20230331transducerplus
    import models.QF_SLIA-master.20230403webapp
    res = []
    for k in [
    		  models.QF_SLIA-master.2015Norn,
    		  models.QF_SLIA-master.20180523Reynolds,
    		  models.QF_SLIA-master.2018Kepler,
    		  models.QF_SLIA-master.20190311strsmallrwNoetzli,
    		  models.QF_SLIA-master.2019fullstrint,
    		  models.QF_SLIA-master.2019Jiang,
    		  models.QF_SLIA-master.2019Leetcode,
    		  models.QF_SLIA-master.20230327stringfuzzlu,
    		  models.QF_SLIA-master.20230329denghang,
    		  models.QF_SLIA-master.20230329woorpjelu,
    		  models.QF_SLIA-master.20230331transducerplus,
    		  models.QF_SLIA-master.20230403webapp,
              ]:
        res = res+k.getTrackData (bname or "QF_SLIA-master")
    return res
