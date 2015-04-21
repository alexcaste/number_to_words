class Fixnum
  define_method(:number_to_words) do
    words = { 0 => "",
              1 => "one",
              2 => "two",
              3 => "three",
              4 => "four",
              5 => "five",
              6 => "six",
              7 => "seven",
              8 => "eight",
              9 => "nine",
              10 => "ten",
              11 => "eleven",
              12 => "twelve",
              13 => "thirteen",
              14 => "fourteen",
              15 => "fifteen",
              16 => "sixteen",
              17 => "seventeen",
              18 => "eighteen",
              19 => "nineteen",
              20 => "twenty",
              30 => "thirty",
              40 => "fourty",
              50 => "fifty",
              60 => "sixty",
              70 => "seventy",
              80 => "eighty",
              90 => "ninety"
              }

     ones = words.fetch(self.%(10))
     tens = words.fetch(self.%(100).-(self.%(10)))
     hundreds = words.fetch(self/100)
    #  thousands = words.fetch(self/1000)
    #  tenthousand = words.fetch(self/10000)
    #  hundredthousand = words.fetch(self/100000)

    if self.<(1)
      word_numbers = "zero"
    elsif words.include?(self)
        word_numbers = words.fetch(self)
    elsif self.<(100)
      word_numbers = tens.concat(" ").concat(ones)
    elsif self.<(1000)
      word_numbers = hundreds.concat(" hundred ").concat(tens).concat(" ").concat(ones)



    # if words.include?(self)
    #   word_numbers = words.fetch(self)
    # elsif self.<(100)
    #   ones = (self.%(10))
    #   tens = (self/10)
    #   hundreds1
    # elsif self.<(1000)
    #   hundreds = self/100
    # word_numbers = words.fetch(tens).concat(" ").concat((words.fetch(ones)))
    end
    word_numbers
  end
end
