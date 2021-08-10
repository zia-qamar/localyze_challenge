# challenge 1 solution
def get_max_char(str)
  # get all sequences of characters
  split_by_occurrence = str.each_char.chunk_while { |curr, nxt| curr == nxt }.map(&:join)
  # get sort array by length and get last largest sequence if characters
  split_by_occurrence.map(&:length).uniq == [1] ? split_by_occurrence[0] : split_by_occurrence.sort_by(&:length).last
end

# Challenge 3 solution
def last_word_length(str)
  # split string by space and get last element length
  str.split(' ').last.length
end