#!/usr/bin/python

import DV

FVname = "gssw"

tc = {}
tm = {}
errCodes = {}

tm["TM"] = {'nodeTypename': 'TM-Type', 'type': 'CHOICE', 'id': 'TM', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "choices":[{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'hello', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'tm_timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'tm_payload', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'data', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'obc_t', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 65535},
{'nodeTypename': '', 'type': 'INTEGER', 'id': 'obc_v', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 65535}]}]}]},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'hk', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'tm_timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'SEQOF', 'id': 'tm_payload', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minSize': 4, 'maxSize': 4, 'seqoftype':{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'tm_payload', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'data', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'obc_t', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 65535},
{'nodeTypename': '', 'type': 'INTEGER', 'id': 'obc_v', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 65535}]}]}
}]},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'mode', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'tm_timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'ENUMERATED', 'id': 'tm_payload', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'values':["idle", "coverage"], "valuesInt": {"idle": 0, "coverage": 1}}]},
{'nodeTypename': '', 'type': 'SEQUENCE', 'id': 'err', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, "children":[{'nodeTypename': '', 'type': 'INTEGER', 'id': 'tm_timestamp', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minR': 0, 'maxR': 4294967295},
{'nodeTypename': '', 'type': 'STRING', 'id': 'tm_payload', 'isOptional': False, 'alwaysPresent': True, 'alwaysAbsent': False, 'minSize': 0, 'maxSize': 80}]}], "choiceIdx": {"hello": DV.hello_PRESENT,"hk": DV.hk_PRESENT,"mode": DV.mode_PRESENT,"err": DV.err_PRESENT}}
tc["TC"] = {'nodeTypename': 'TC-Type', 'type': 'ENUMERATED', 'id': 'TC', 'isOptional': False, 'alwaysPresent': False, 'alwaysAbsent': False, 'values':["open-link", "close-link", "request-hk"], "valuesInt": {"open-link": 0, "close-link": 1, "request-hk": 2}}
