#!/usr/bin/env ruby
# Files

begin # Read a file
  content = File.read('000_references.txt')
  puts content

  puts "-------"
  file = File.open('000_references.txt')
  puts file.read
end

begin # Write a file
  file = File.open('/tmp/file.txt', 'w')
  file.write("hello\n")

  File.open('/tmp/file2.txt', 'w') do |f|
    f.puts("hello2\n")
  end
end
