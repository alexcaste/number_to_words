class Fixnum
  define_method(:number_to_words) do
    words = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten" }

    word_numbers = words.fetch(self)

    word_numbers
  end
end
