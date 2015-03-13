require 'open-uri'         
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_fname = "hamlet.txt"
File.open(local_fname, "w"){|file| file.write(open(url).read)}

File.open(local_fname, "r") do |file|
   file.readlines.each_with_index do |line, idx|
      puts line if idx % 42 == 41
   end   
end

# Write a program that:

# Reads hamlet.txt from the given URL
# Saves it to a local file on your hard drive named "hamlet.txt"
# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen