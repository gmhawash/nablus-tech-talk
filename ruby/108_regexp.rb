#!/usr/bin/env ruby
# Regexp

begin
  puts "Where am I" =~ /am/

  # check if found, index where found
  puts "LINE: #{__LINE__}"
  if index = "Where am I" =~ /am/
    puts "found you here: #{index}"
  end
end if true

begin # nil if not found
  puts "LINE: #{__LINE__}"
  p "Where am I" =~ /AM/

end if false

begin # capture expressions
  puts "LINE: #{__LINE__}"
  "Where is he or his" =~ /(he|she)/
  puts $1

  "Where is he or his" =~ /(he|she).*(his)/
  puts [$1, $2]

end if false

begin # modifiers
  puts "LINE: #{__LINE__}"
  "Where is HE or his" =~ /(he|she)/i
  puts $1
end if false
