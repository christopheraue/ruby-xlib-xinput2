%module XInput2

#define _XFUNCPROTOBEGIN
#define _XFUNCPROTOEND

#define Status int
typedef unsigned long XID;
typedef XID Atom;
typedef XID Time;
typedef XID Window;
typedef XID Cursor;
typedef XID PointerBarrier;

%include "X11/extensions/XInput2.h"

