require 'filesize'
require 'win32ole'

drive_list = ["D:", "H:"]

file_system = WIN32OLE.new("Scripting.FileSystemObject")
drives = file_system.Drives
drives.each do |drive|
  next unless drive_list.include? drive.Path
  file = File.open("#{drive.Path}//drive_status.txt", "w")
  file.puts "Available space: #{Filesize.from("#{drive.AvailableSpace} B").to_s('GB')}"
  file.print "Total size: #{Filesize.from("#{drive.TotalSize} B").to_s('GB')}"
  file.close
end