def wordcount(phrase)
  count_of_each_word = Hash.new(0)
  words = phrase.split(/[^\w-]+/)
  words.each do |word|
    count_of_each_word[word.downcase] += 1
  end
  return count_of_each_word.to_a
end

puts "Please input phrase:"
input = gets.chomp
print wordcount(input)
