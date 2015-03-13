# Be careful, pasting this into IRB/Pry will take a long time to print.
# It's a loooong string. :)
def running_time(word, word_times)
  t = Time.now
  word.reverse * word_times
  t2 = Time.now
  running_time = t2 - t
end


word = "apple"
word_times = 1000
puts "#{word.reverse} took #{running_time(word, word_times)} seconds to run #{word_times}."
