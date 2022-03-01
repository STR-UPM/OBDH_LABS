#include "timeInMS.h"

long long getTimeInMilliseconds()
{
#ifdef __linux__
    static long long epoch = -1;
    struct timespec tv;
    clock_gettime(CLOCK_MONOTONIC, &tv);
    long long val = 1000LL*(long long)tv.tv_sec + (long long)tv.tv_nsec / 1000000LL;
    if (-1 == epoch) {
        epoch = val;
    }
    return val - epoch;
#else
    return 0LL;
#endif
}
