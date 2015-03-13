def hide_all_sins(string)
  p string.gsub(/\b\d{3}-\d{3}\b{3}(?=-\d){3}/, "XXX-XXX").to_s 
end
 
puts "hide_all_sins obfuscates any SINs in the string"
puts hide_all_sins("234-601-142, 350-801-074, 013-601-876") == "XXX-XXX-142, XXX-XXX-074, XXX-XXX-876"
 
puts "hide_all_sins does not alter a string without SINs in it"
string = "please confirm your identity: XXX-XXX-142"
puts hide_all_sins(string) == string
 