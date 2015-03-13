DIRNAME = "data-hold"
Dir.glob("#{DIRNAME}/**/*.*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
   puts "#{fname}\t#{File.size(fname)}"
end


# Using the Dir.glob and File.size methods, write a script that targets a directory – and all of its subdirectories – and prints out the names of the 10 files that take up the most disk space.

# Point your script to any subdirectory. You will obviously get different results than I do.

# Hint: This exercise does not require a call to File.open