# A method to reverse the words in a sentence, in place.
# Time complexity: linear, O(n) - where n is the length of input string
# Space complexity: constant, O(1) - the space used remains the same regardless
#                   of the input size
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  start_index = 0
  end_index = 0
  length = my_sentence.length

  while end_index < length
    if my_sentence[end_index] == " " || end_index == length - 1
      temp_index = end_index
      temp_index = end_index - 1 if my_sentence[end_index] == " "

      reverse_string(start_index, temp_index, my_sentence)

      start_index = end_index + 1
    end
    end_index += 1
  end

  reverse_string(0, length - 1, my_sentence)

  return my_sentence
end

def reverse_string(start_index, end_index, my_sentence)
  storage = ""

  while start_index < end_index
    storage = my_sentence[start_index]
    my_sentence[start_index] = my_sentence[end_index]
    my_sentence[end_index] = storage
    start_index += 1
    end_index -= 1
  end

  return my_sentence
end
