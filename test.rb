require 'bundler/setup'
Bundler.require

d = Xlib::XOpenDisplay(':0')
maj = FFI::MemoryPointer.new :int
min = FFI::MemoryPointer.new :int

maj.write_int 2
min.write_int 1

Xlib::XIQueryVersion(d, maj, min)