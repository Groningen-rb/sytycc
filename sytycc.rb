#!/usr/bin/env ruby

# starting up: 'ruby sytycc.rb clean'

require 'fileutils'

if ARGV[0] == "clean"
  current = ""
  Dir.entries('/Users/ivan/Documents/code/personal/groningen-rb-sytycc/pietje/Desktop').each do |file|
    if file != "." && file != ".." && !File.directory?("/Users/ivan/Documents/code/personal/groningen-rb-sytycc/pietje/Desktop/#{file}")
      current = file
      FileUtils.cp("/Users/ivan/Documents/code/personal/groningen-rb-sytycc/pietje/Desktop/#{file}", "/Users/ivan/Documents/code/personal/groningen-rb-sytycc/pietje/shelf/#{file}")
      FileUtils.rm("/Users/ivan/Documents/code/personal/groningen-rb-sytycc/pietje/Desktop/#{file}")
    end
  end
  puts "Moving #{current}"
end
