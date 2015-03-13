def fuzzbuzz(start=1, finish=100)
  result = []
  start.upto(finish) do |i|
    result << evaluate(i)
  end
end

def evaulate(number)
  result = ""
  result << "Fizz" if number % 3 == 0
  result << "Buzz" if number % 5 == 0
  result << "Prazz" if number % 7 == 0
  result << "Bruzz" if number % 11 == 0
  result.empty? ? number : result
end

puts fuzzbuzz