#!/usr/bin/env ruby

# starting up: 'ruby sytycc.rb clean'

current = ""
`mkdir -p ~/prj/sytycc/pietje/shelf`
`git co pietje`

def move(filename)
  file = File.basename(filename)
  src = filename
  dst = File.expand_path("~/prj/sytycc/pietje/shelf/#{file}")
  puts "Moving #{File.basename(src)} to #{File.basename(dst)}"
  `mv "#{src}" "#{dst}"`
end

dir = "#{ENV['HOME']}/prj/sytycc/pietje/Desktop"
Dir.entries(dir).each do |file|
  filename = File.expand_path(file, dir)
  if File.file?(filename)
    move filename
  end
end
