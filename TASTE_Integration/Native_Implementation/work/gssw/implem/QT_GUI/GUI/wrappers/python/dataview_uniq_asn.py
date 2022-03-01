from functools import partial

import DV

from Stubs import (
    myassert, Clean, DataStream, COMMON)

class T_UInt16(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt16, self).__init__("T_UInt16", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_UInt64(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt64, self).__init__("T_UInt64", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Float(COMMON):
    def __init__(self, ptr=None):
        super(T_Float, self).__init__("T_Float", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class Mission_Time(COMMON):
    def __init__(self, ptr=None):
        super(Mission_Time, self).__init__("Mission_Time", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_B_b_T(COMMON):
    def __init__(self, ptr=None):
        super(T_B_b_T, self).__init__("T_B_b_T", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append(" "+str(path[i].Get()))
            path.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self), range(length)))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Omega(COMMON):
    def __init__(self, ptr=None):
        super(T_Omega, self).__init__("T_Omega", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append(" "+str(path[i].Get()))
            path.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self), range(length)))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_MT_Working(COMMON):
    def __init__(self, ptr=None):
        super(T_MT_Working, self).__init__("T_MT_Working", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append(" "+str(path[i].Get()))
            path.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self), range(length)))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Control(COMMON):
    def __init__(self, ptr=None):
        super(T_Control, self).__init__("T_Control", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append(" "+str(path[i].Get()))
            path.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self), range(length)))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class Analog_Data(COMMON):
    def __init__(self, ptr=None):
        super(Analog_Data, self).__init__("Analog_Data", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class Analog_Data_Table(COMMON):
    # Ordered list of fields:
    children_ordered = ['obc-t', 'obc-v']

    def __init__(self, ptr=None):
        super(Analog_Data_Table, self).__init__("Analog_Data_Table", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("obc-t ")
        lines.append(" "+str(self.obc_t.Get()))
        lines.append(', ')
        lines.append("obc-v ")
        lines.append(" "+str(self.obc_v.Get()))
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class Satellite_State(COMMON):
    # Ordered list of fields:
    children_ordered = ['timestamp', 'data']

    def __init__(self, ptr=None):
        super(Satellite_State, self).__init__("Satellite_State", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("timestamp ")
        lines.append(" "+str(self.timestamp.Get()))
        lines.append(', ')
        lines.append("data ")
        lines.append("{")
        lines.append(" obc-t ")
        lines.append("  "+str(self.data.obc_t.Get()))
        lines.append(', ')
        lines.append(" obc-v ")
        lines.append("  "+str(self.data.obc_v.Get()))
        lines.append("}")
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class Operating_Mode(COMMON):
    # Allowed enumerants:
    idle = 0
    coverage = 1
    allowed = [idle, coverage]
    def __init__(self, ptr=None):
        super(Operating_Mode, self).__init__("Operating_Mode", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+{'0': 'idle', '1': 'coverage'}[str(self.Get())])

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TC_Type(COMMON):
    # Allowed enumerants:
    open_link = 0
    close_link = 1
    request_hk = 2
    allowed = [open_link, close_link, request_hk]
    def __init__(self, ptr=None):
        super(TC_Type, self).__init__("TC_Type", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+{'0': 'open-link', '1': 'close-link', '2': 'request-hk'}[str(self.Get())])

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Hello(COMMON):
    # Ordered list of fields:
    children_ordered = ['tm-timestamp', 'tm-payload']

    def __init__(self, ptr=None):
        super(TM_Hello, self).__init__("TM_Hello", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("tm-timestamp ")
        lines.append(" "+str(self.tm_timestamp.Get()))
        lines.append(', ')
        lines.append("tm-payload ")
        lines.append("{")
        lines.append(" timestamp ")
        lines.append("  "+str(self.tm_payload.timestamp.Get()))
        lines.append(', ')
        lines.append(" data ")
        lines.append("{")
        lines.append("  obc-t ")
        lines.append("   "+str(self.tm_payload.data.obc_t.Get()))
        lines.append(', ')
        lines.append("  obc-v ")
        lines.append("   "+str(self.tm_payload.data.obc_v.Get()))
        lines.append("}")
        lines.append("}")
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Housekeeping_Contents(COMMON):
    def __init__(self, ptr=None):
        super(TM_Housekeeping_Contents, self).__init__("TM_Housekeeping_Contents", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append("{")
            lines.append(" timestamp ")
            lines.append("  "+str(path[i].timestamp.Get()))
            path.Reset(state)
            lines.append(', ')
            lines.append(" data ")
            lines.append("{")
            lines.append("  obc-t ")
            lines.append("   "+str(path[i].data.obc_t.Get()))
            path.Reset(state)
            lines.append(', ')
            lines.append("  obc-v ")
            lines.append("   "+str(path[i].data.obc_v.Get()))
            path.Reset(state)
            lines.append("}")
            path.Reset(state)
            lines.append("}")
            path.Reset(state)
        state = self.GetState()
        length = self.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self), range(length)))
        self.Reset(state)
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Housekeeping(COMMON):
    # Ordered list of fields:
    children_ordered = ['tm-timestamp', 'tm-payload']

    def __init__(self, ptr=None):
        super(TM_Housekeeping, self).__init__("TM_Housekeeping", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("tm-timestamp ")
        lines.append(" "+str(self.tm_timestamp.Get()))
        lines.append(', ')
        lines.append("tm-payload ")
        lines.append("{")
        def emitElem(path, i):
            state = path.GetState()
            if i > 0:
                lines.append(",")
            lines.append("{")
            lines.append("  timestamp ")
            lines.append("   "+str(path[i].timestamp.Get()))
            path.Reset(state)
            lines.append(', ')
            lines.append("  data ")
            lines.append("{")
            lines.append("   obc-t ")
            lines.append("    "+str(path[i].data.obc_t.Get()))
            path.Reset(state)
            lines.append(', ')
            lines.append("   obc-v ")
            lines.append("    "+str(path[i].data.obc_v.Get()))
            path.Reset(state)
            lines.append("}")
            path.Reset(state)
            lines.append("}")
            path.Reset(state)
        state = self.GetState()
        length = self.tm_payload.GetLength()
        self.Reset(state)
        list(map(partial(emitElem, self.tm_payload), range(length)))
        self.Reset(state)
        lines.append("}")
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Mode(COMMON):
    # Ordered list of fields:
    children_ordered = ['tm-timestamp', 'tm-payload']

    def __init__(self, ptr=None):
        super(TM_Mode, self).__init__("TM_Mode", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("tm-timestamp ")
        lines.append(" "+str(self.tm_timestamp.Get()))
        lines.append(', ')
        lines.append("tm-payload ")
        lines.append(" "+{'0': 'idle', '1': 'coverage'}[str(self.tm_payload.Get())])
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Error_Contents(COMMON):
    def __init__(self, ptr=None):
        super(TM_Error_Contents, self).__init__("TM_Error_Contents", ptr)
#

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("\""+str(self.GetPyString()) + "\"")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Error(COMMON):
    # Ordered list of fields:
    children_ordered = ['tm-timestamp', 'tm-payload']

    def __init__(self, ptr=None):
        super(TM_Error, self).__init__("TM_Error", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("tm-timestamp ")
        lines.append(" "+str(self.tm_timestamp.Get()))
        lines.append(', ')
        lines.append("tm-payload ")
        lines.append(" \""+str(self.tm_payload.GetPyString()) + "\"")
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class TM_Type(COMMON):
    def __init__(self, ptr=None):
        super(TM_Type, self).__init__("TM_Type", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        if self.kind.Get() == DV.hello_PRESENT:
         lines.append("hello: ")
         lines.append("{")
         lines.append(" tm-timestamp ")
         lines.append("  "+str(self.hello.tm_timestamp.Get()))
         lines.append(', ')
         lines.append(" tm-payload ")
         lines.append("{")
         lines.append("  timestamp ")
         lines.append("   "+str(self.hello.tm_payload.timestamp.Get()))
         lines.append(', ')
         lines.append("  data ")
         lines.append("{")
         lines.append("   obc-t ")
         lines.append("    "+str(self.hello.tm_payload.data.obc_t.Get()))
         lines.append(', ')
         lines.append("   obc-v ")
         lines.append("    "+str(self.hello.tm_payload.data.obc_v.Get()))
         lines.append("}")
         lines.append("}")
         lines.append("}")
        if self.kind.Get() == DV.hk_PRESENT:
         lines.append("hk: ")
         lines.append("{")
         lines.append(" tm-timestamp ")
         lines.append("  "+str(self.hk.tm_timestamp.Get()))
         lines.append(', ')
         lines.append(" tm-payload ")
         lines.append("{")
         def emitElem(path, i):
             state = path.GetState()
             if i > 0:
                 lines.append(",")
             lines.append("{")
             lines.append("   timestamp ")
             lines.append("    "+str(path[i].timestamp.Get()))
             path.Reset(state)
             lines.append(', ')
             lines.append("   data ")
             lines.append("{")
             lines.append("    obc-t ")
             lines.append("     "+str(path[i].data.obc_t.Get()))
             path.Reset(state)
             lines.append(', ')
             lines.append("    obc-v ")
             lines.append("     "+str(path[i].data.obc_v.Get()))
             path.Reset(state)
             lines.append("}")
             path.Reset(state)
             lines.append("}")
             path.Reset(state)
         state = self.GetState()
         length = self.hk.tm_payload.GetLength()
         self.Reset(state)
         list(map(partial(emitElem, self.hk.tm_payload), range(length)))
         self.Reset(state)
         lines.append("}")
         lines.append("}")
        if self.kind.Get() == DV.mode_PRESENT:
         lines.append("mode: ")
         lines.append("{")
         lines.append(" tm-timestamp ")
         lines.append("  "+str(self.mode.tm_timestamp.Get()))
         lines.append(', ')
         lines.append(" tm-payload ")
         lines.append("  "+{'0': 'idle', '1': 'coverage'}[str(self.mode.tm_payload.Get())])
         lines.append("}")
        if self.kind.Get() == DV.err_PRESENT:
         lines.append("err: ")
         lines.append("{")
         lines.append(" tm-timestamp ")
         lines.append("  "+str(self.err.tm_timestamp.Get()))
         lines.append(', ')
         lines.append(" tm-payload ")
         lines.append("  \""+str(self.err.tm_payload.GetPyString()) + "\"")
         lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Int32(COMMON):
    def __init__(self, ptr=None):
        super(T_Int32, self).__init__("T_Int32", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_UInt32(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt32, self).__init__("T_UInt32", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Int8(COMMON):
    def __init__(self, ptr=None):
        super(T_Int8, self).__init__("T_Int8", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_UInt8(COMMON):
    def __init__(self, ptr=None):
        super(T_UInt8, self).__init__("T_UInt8", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()))

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Boolean(COMMON):
    def __init__(self, ptr=None):
        super(T_Boolean, self).__init__("T_Boolean", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append(""+str(self.Get()!=0).upper())

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


class T_Null_Record(COMMON):
    # Ordered list of fields:
    children_ordered = ['']

    def __init__(self, ptr=None):
        super(T_Null_Record, self).__init__("T_Null_Record", ptr)

    def GSER(self):
        ''' Return the GSER representation of the value '''
        lines = []
        lines.append("{")
        lines.append("}")

        return ' '.join(lines)

    def PrintAll(self):
        ''' Display a variable of this type '''
        print(self.GSER() + '\n')


