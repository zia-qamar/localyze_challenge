# challenge 1 solution
def get_max_char(str)
  # get all sequences of characters by splitting each chunk using adjacent characters
  split_by_occurrence = str.each_char.chunk_while { |curr, nxt| curr == nxt }.map(&:join)

  # get length of max occurred character
  max_length = split_by_occurrence.map(&:length).max

  # return first element from array where sequence length matches max length
  split_by_occurrence.select{|a| a.length == max_length}.first
end

# Challenge 3 solution
def last_word_length(str)
  # split string by space and get last element length
  str.split(' ').last.length
end
