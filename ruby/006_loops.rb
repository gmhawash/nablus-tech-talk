#!/usr/bin/env ruby
#
# Loops
i = 1
while i < 10
  puts("Inside the loop i = #{i}" )
  i += 1
end


puts "\n\n******* Line %d \n" % __LINE__
i=1
begin
  puts("Inside the loop i = #{i}" )
  i+=1
end while i < 10


puts "\n\n******* Line %d \n" % __LINE__
i=1
begin
  puts("Inside the loop i = #{i}" )
  i+=1
end until i == 10
