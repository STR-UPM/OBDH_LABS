from __future__ import absolute_import


import threading, time, sys, os, ctypes

import DV
try:
    PythonAccess = ctypes.cdll.LoadLibrary("./PythonAccess.so")
except OSError:
    folder = os.path.dirname(os.path.abspath(__file__))
    PythonAccess = ctypes.cdll.LoadLibrary(folder + "/PythonAccess.so")
    sys.path.append(folder)
OpenMsgQueueForReading = PythonAccess.OpenMsgQueueForReading
OpenMsgQueueForReading.restype = ctypes.c_int
CloseMsgQueue =  PythonAccess.CloseMsgQueue
GetMsgQueueBufferSize = PythonAccess.GetMsgQueueBufferSize
GetMsgQueueBufferSize.restype = ctypes.c_int
RetrieveMessageFromQueue = PythonAccess.RetrieveMessageFromQueue
RetrieveMessageFromQueue.restype = ctypes.c_int
import dataview_uniq_asn
i_TM = ctypes.c_int.in_dll(PythonAccess, "ii_TM").value
i_TC = ctypes.c_int.in_dll(PythonAccess, "ii_TC").value
SendTC_TC = PythonAccess.SendTC_TC

class Poll_gssw(threading.Thread):
    def run(self):
        self._bDie = False
        while True:
            if self._bDie:
                return
            queue_name = str(os.geteuid()) + "_gssw_PI_Python_queue"
            self._msgQueue = OpenMsgQueueForReading(queue_name.encode("utf-8"))
            if (self._msgQueue != -1): break
            print("Communication channel over %d_gssw_PI_Python_queue not established yet...\n" % os.geteuid())
            time.sleep(1)
        bufferSize = GetMsgQueueBufferSize(self._msgQueue)
        self._pMem = ctypes.create_string_buffer(bufferSize).raw
        while not self._bDie:
            self.messageReceivedType = RetrieveMessageFromQueue(self._msgQueue, bufferSize, self._pMem)
            if self.messageReceivedType == -1:
                time.sleep(0.01)
                continue
            ProcessTM(self)

def Invoke_TC(var_TC_Type):
    if -1 == SendTC_TC(var_TC_Type._ptr):
        print('Failed to send TC: TC...\n')
        raise IOError("TC")

def ProcessTM(self):
    if self.messageReceivedType == i_TM:
        print("\n"+chr(27)+"[32m" + "Received Telemetry: TM" + chr(27) + "[0m\n")
        backup = self._pMem
        # Read the data for param Telemetry
        var_Telemetry = dataview_uniq_asn.TM_Type()
        var_Telemetry.SetData(self._pMem)
        print("Parameter Telemetry:")
        var_Telemetry.PrintAll()
        print()
        # self._pMem = DV.MovePtrBySizeOf_TM_Type(self._pMem)
        # Revert the pointer to start of the data
        self._pMem = backup

if __name__ == "__main__":
    poll_gssw = Poll_gssw()
    poll_gssw.start()
    try:
        time.sleep(1e8)
    except:
        poll_gssw._bDie = True
        poll_gssw.join()