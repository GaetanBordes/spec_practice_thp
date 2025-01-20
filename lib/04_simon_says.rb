def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  ([word] * times).join(" ")
end

def start_of_word(word, num)
  word[0...num]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = ["and", "the", "over"]
  words = sentence.split

  words.each_with_index.map do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end.join(" ")
end
