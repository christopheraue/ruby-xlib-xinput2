  class XIAddMasterInfo < FFI::Struct
    layout(
           :type, :int,
           :name, :pointer,
           :send_core, Bool,
           :enable, Bool
    )
    def name=(str)
      @name = FFI::MemoryPointer.from_string(str)
      self[:name] = @name
    end
    def name
      @name.get_string(0)
    end

  end
  class XIRemoveMasterInfo < FFI::Struct
    layout(
           :type, :int,
           :deviceid, :int,
           :return_mode, :int,
           :return_pointer, :int,
           :return_keyboard, :int
    )
  end
  class XIAttachSlaveInfo < FFI::Struct
    layout(
           :type, :int,
           :deviceid, :int,
           :new_master, :int
    )
  end
  class XIDetachSlaveInfo < FFI::Struct
    layout(
           :type, :int,
           :deviceid, :int
    )
  end
  class XIAnyHierarchyChangeInfo < FFI::Union
    layout(
           :type, :int,
           :add, XIAddMasterInfo,
           :remove, XIRemoveMasterInfo,
           :attach, XIAttachSlaveInfo,
           :detach, XIDetachSlaveInfo
    )
  end
  class XIModifierState < FFI::Struct
    layout(
           :base, :int,
           :latched, :int,
           :locked, :int,
           :effective, :int
    )
  end
  class XIButtonState < FFI::Struct
    layout(
           :mask_len, :int,
           :mask, :pointer
    )
  end
  class XIValuatorState < FFI::Struct
    layout(
           :mask_len, :int,
           :mask, :pointer,
           :values, :pointer
    )
  end
  class XIEventMask < FFI::Struct
    layout(
           :deviceid, :int,
           :mask_len, :int,
           :mask, :pointer
    )
  end
  class XIAnyClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int
    )
  end
  class XIButtonClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int,
           :num_buttons, :int,
           :labels, :pointer,
           :state, XIButtonState
    )
  end
  class XIKeyClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int,
           :num_keycodes, :int,
           :keycodes, :pointer
    )
  end
  class XIValuatorClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int,
           :number, :int,
           :label, :ulong,
           :min, :double,
           :max, :double,
           :value, :double,
           :resolution, :int,
           :mode, :int
    )
  end
  class XIScrollClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int,
           :number, :int,
           :scroll_type, :int,
           :increment, :double,
           :flags, :int
    )
  end
  class XITouchClassInfo < FFI::Struct
    layout(
           :type, :int,
           :sourceid, :int,
           :mode, :int,
           :num_touches, :int
    )
  end
  class XIDeviceInfo < FFI::Struct
    layout(
           :deviceid, :int,
           :name, :pointer,
           :use, :int,
           :attachment, :int,
           :enabled, Bool,
           :num_classes, :int,
           :classes, :pointer
    )
    def name=(str)
      @name = FFI::MemoryPointer.from_string(str)
      self[:name] = @name
    end
    def name
      @name.get_string(0)
    end

  end
  class XIGrabModifiers < FFI::Struct
    layout(
           :modifiers, :int,
           :status, :int
    )
  end
  class XIBarrierReleasePointerInfo < FFI::Struct
    layout(
           :deviceid, :int,
           :barrier, :ulong,
           :eventid, :uint
    )
  end
  class XIEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong
    )
  end
  class XIHierarchyInfo < FFI::Struct
    layout(
           :deviceid, :int,
           :attachment, :int,
           :use, :int,
           :enabled, Bool,
           :flags, :int
    )
  end
  class XIHierarchyEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :flags, :int,
           :num_info, :int,
           :info, :pointer
    )
  end
  class XIDeviceChangedEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :reason, :int,
           :num_classes, :int,
           :classes, :pointer
    )
  end
  class XIDeviceEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :detail, :int,
           :root, :ulong,
           :event, :ulong,
           :child, :ulong,
           :root_x, :double,
           :root_y, :double,
           :event_x, :double,
           :event_y, :double,
           :flags, :int,
           :buttons, XIButtonState,
           :valuators, XIValuatorState,
           :mods, XIModifierState,
           :group, XIModifierState
    )
  end
  class XIRawEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :detail, :int,
           :flags, :int,
           :valuators, XIValuatorState,
           :raw_values, :pointer
    )
  end
  class XIEnterEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :detail, :int,
           :root, :ulong,
           :event, :ulong,
           :child, :ulong,
           :root_x, :double,
           :root_y, :double,
           :event_x, :double,
           :event_y, :double,
           :mode, :int,
           :focus, Bool,
           :same_screen, Bool,
           :buttons, XIButtonState,
           :mods, XIModifierState,
           :group, XIModifierState
    )
  end
  class XIPropertyEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :property, :ulong,
           :what, :int
    )
  end
  class XITouchOwnershipEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :touchid, :uint,
           :root, :ulong,
           :event, :ulong,
           :child, :ulong,
           :flags, :int
    )
  end
  class XIBarrierEvent < FFI::Struct
    layout(
           :type, :int,
           :serial, :ulong,
           :send_event, Bool,
           :display, :pointer,
           :extension, :int,
           :evtype, :int,
           :time, :ulong,
           :deviceid, :int,
           :sourceid, :int,
           :event, :ulong,
           :root, :ulong,
           :root_x, :double,
           :root_y, :double,
           :dx, :double,
           :dy, :double,
           :dtime, :int,
           :flags, :int,
           :barrier, :ulong,
           :eventid, :uint
    )
  end
  attach_function :XIQueryPointer, [ :pointer, :int, :ulong, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer ], Bool
  attach_function :XIWarpPointer, [ :pointer, :int, :ulong, :ulong, :double, :double, :uint, :uint, :double, :double ], Bool
  attach_function :XIDefineCursor, [ :pointer, :int, :ulong, :ulong ], :int
  attach_function :XIUndefineCursor, [ :pointer, :int, :ulong ], :int
  attach_function :XIChangeHierarchy, [ :pointer, :pointer, :int ], :int
  attach_function :XISetClientPointer, [ :pointer, :ulong, :int ], :int
  attach_function :XIGetClientPointer, [ :pointer, :ulong, :pointer ], Bool
  attach_function :XISelectEvents, [ :pointer, :ulong, :pointer, :int ], :int
  attach_function :XIGetSelectedEvents, [ :pointer, :ulong, :pointer ], :pointer
  attach_function :XIQueryVersion, [ :pointer, :pointer, :pointer ], :int
  attach_function :XIQueryDevice, [ :pointer, :int, :pointer ], :pointer
  attach_function :XISetFocus, [ :pointer, :int, :ulong, :ulong ], :int
  attach_function :XIGetFocus, [ :pointer, :int, :pointer ], :int
  attach_function :XIGrabDevice, [ :pointer, :int, :ulong, :ulong, :ulong, :int, :int, Bool, :pointer ], :int
  attach_function :XIUngrabDevice, [ :pointer, :int, :ulong ], :int
  attach_function :XIAllowEvents, [ :pointer, :int, :int, :ulong ], :int
  attach_function :XIAllowTouchEvents, [ :pointer, :int, :uint, :ulong, :int ], :int
  attach_function :XIGrabButton, [ :pointer, :int, :int, :ulong, :ulong, :int, :int, :int, :pointer, :int, :pointer ], :int
  attach_function :XIGrabKeycode, [ :pointer, :int, :int, :ulong, :int, :int, :int, :pointer, :int, :pointer ], :int
  attach_function :XIGrabEnter, [ :pointer, :int, :ulong, :ulong, :int, :int, :int, :pointer, :int, :pointer ], :int
  attach_function :XIGrabFocusIn, [ :pointer, :int, :ulong, :int, :int, :int, :pointer, :int, :pointer ], :int
  attach_function :XIGrabTouchBegin, [ :pointer, :int, :ulong, :int, :pointer, :int, :pointer ], :int
  attach_function :XIUngrabButton, [ :pointer, :int, :int, :ulong, :int, :pointer ], :int
  attach_function :XIUngrabKeycode, [ :pointer, :int, :int, :ulong, :int, :pointer ], :int
  attach_function :XIUngrabEnter, [ :pointer, :int, :ulong, :int, :pointer ], :int
  attach_function :XIUngrabFocusIn, [ :pointer, :int, :ulong, :int, :pointer ], :int
  attach_function :XIUngrabTouchBegin, [ :pointer, :int, :ulong, :int, :pointer ], :int
  attach_function :XIListProperties, [ :pointer, :int, :pointer ], :pointer
  attach_function :XIChangeProperty, [ :pointer, :int, :ulong, :ulong, :int, :int, :pointer, :int ], :void
  attach_function :XIDeleteProperty, [ :pointer, :int, :ulong ], :void
  attach_function :XIGetProperty, [ :pointer, :int, :ulong, :long, :long, Bool, :ulong, :pointer, :pointer, :pointer, :pointer, :pointer ], :int
  attach_function :XIBarrierReleasePointers, [ :pointer, :pointer, :int ], :void
  attach_function :XIBarrierReleasePointer, [ :pointer, :int, :ulong, :uint ], :void
  attach_function :XIFreeDeviceInfo, [ :pointer ], :void
