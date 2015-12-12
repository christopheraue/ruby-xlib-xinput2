require "xlib/xinput2/version"
require "xlib"

module Xlib
  ffi_lib 'Xi'

  class_eval File.read(File.join(File.dirname(__FILE__), 'xinput2/generated/XI2.rb'))
  class_eval File.read(File.join(File.dirname(__FILE__), 'xinput2/generated/XInput2.rb'))

  XIGroupState = XIModifierState
  XILeaveEvent = XIEnterEvent
  XIFocusInEvent = XIEnterEvent
  XIFocusOutEvent = XIEnterEvent
end
