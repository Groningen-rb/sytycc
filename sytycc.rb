#!/usr/bin/env ruby

$home = "#{ENV['HOME']}/prj/sytycc/pietje"
$junk = File.join($home, "Desktop")
$nice = File.join($home, "shelf")

def destination(file)
  ext = File.extname(file)
  return 'movies'   if ['mp4'].include?(ext)
  return 'porn'     if ['wmv'].include?(ext)
  return 'pictures' if ['png', 'jpg', 'gif'].include?(ext)
  return 'music'    if ['mp3', 'm4a'].include?(ext)
  return 'documents'
end

def move(src)
  dir = destination(src)
  dst = File.join($nice, dir)
  puts "Moving #{src} to #{dst}"
  `mkdir -p #{File.dirname(dst)}`
  `mv "#{src}" "#{dst}"`
end

Dir.entries($junk).each do |file|
  filename = File.expand_path(file, $junk)
  move filename if File.file?(filename)
end
