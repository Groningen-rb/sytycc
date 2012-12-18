#!/usr/bin/env ruby

# starting up: 'ruby sytycc.rb clean'

require 'fileutils'

base = "#{ENV['HOME']}/Development/Groningenrb/sytycc"
source = "#{base}/pietje/Desktop"
destination = "#{base}/pietje/shelf"

def is_file?(path)
	File.file?(File.new(path))
end


Dir.entries(source).select { |filename| is_file? "#{source}/#{filename}" }.each do |filename|
  FileUtils.mv("#{source}/#{filename}", "#{destination}/#{filename}")
  puts "Moving #{filename}"
end