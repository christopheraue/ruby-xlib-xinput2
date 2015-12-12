namespace :ffi do
  desc 'Generate ffi interface'
  task :generate do
    `swig -xml -o XI2_wrap.xml -I/usr/include swig/XI2.i`
    `swig -xml -o XInput2_wrap.xml -I/usr/include swig/XInput2.i`

    `ffi-gen XI2_wrap.xml lib/xlib/xinput2/generated/XI2.rb`
    `ffi-gen XInput2_wrap.xml lib/xlib/xinput2/generated/XInput2.rb`

    `sed -i 's/\\([0-9]\\)U/\\1/g' lib/xlib/xinput2/generated/XI2.rb`

    `rm -f XI2_wrap.xml XInput2_wrap.xml`
  end
end