#!/usr/bin/env ruby

# starting up: 'ruby sytycc.rb clean'

require 'fileutils'

if ARGV[0] == "clean"
  current = ""
  Dir.entries('#{ENV["HOME"]}/sytycc/pietje/Desktop').each do |file|
    if file != "." && file != ".." && !File.directory?("/Users/marten/prj/sytycc/pietje/Desktop/#{file}")
      current = file
      `mv "#{ENV['HOME']}/sytycc/pietje/Desktop/#{file}" "#{ENV['HOME']}/sytycc/pietje/shelf/#{file}"`
    end
  end
  puts "Moving #{current}"
end
