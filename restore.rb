#!/usr/bin/env ruby

require 'fileutils'

FileUtils.rm_rf Dir.glob('pietje/shelf/*')

FileUtils.touch([
		'pietje/Desktop/belangrijke-document.doc', 
		'pietje/Desktop/deze-mag-niemand-zien.zip', 
		'pietje/Desktop/op-stap.jpg', 
		'pietje/Desktop/rommel.jpg', 
		'pietje/Desktop/screenshot-1.png', 
		'pietje/Desktop/screenshot-2.png',
		'pietje/Desktop/filmpje-in-de-bergen.mov',
		'pietje/Desktop/bach-symphony.mp3',
		'pietje/Desktop/rinus-toeter-toeter-toeter.mp3',
		'pietje/Desktop/jan-smit-dromen-zijn-bedrog.mp3'
])
