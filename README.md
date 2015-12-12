Simple 1:1 interface to XInput2 for ruby
========================================

This gem just wraps Xlib's XInput2 extension and makes its interface
available in ruby through ffi. XInput2 documentation can be found in its
[manual](http://cgit.freedesktop.org/xorg/lib/libXi/tree/man) (functions
starting with XI belong to XInput Version 2 as defined in the
[header](http://cgit.freedesktop.org/xorg/lib/libXi/tree/include/X11/extensions/XInput2.h)).
No functions have been renamed or abstracted away in some objects. It's
just the plain XInput2 API.

For a lightweight wrapper and a more ruby style access to X11 have a look at
[ruby-xlib-objects'](https://github.com/christopheraue/ruby-xlib-objects).

Installation
------------
```
gem install xlib-xinput2
```

Usage
-----
All constants and methods of XInput can found under their original name in
the Xlib namespace.

```ruby
d = Xlib::XOpenDisplay(':0')
maj = FFI::MemoryPointer.new :int
min = FFI::MemoryPointer.new :int

maj.write_int 2
min.write_int 1

Xlib::XIQueryVersion(d, maj, min)
```