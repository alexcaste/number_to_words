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

    #  ones = words.fetch(self.%(10))
    #  tens = words.fetch(self.%(100).-(self.%(10)))
    #  hundreds = words.fetch(self.%(1000)/100)
    #  thousands = words.fetch(self%(10000)/1000)
    #  tenthousand = words.fetch((self/1000)-((self.%10000)/1000))
    #  hundredthousand = words.fetch(self/100000)
    #  million = words.fetch(self/1000000)

# deals with zero
    if self.<(1)
      word_numbers = "zero"

# checks if key already exists
    elsif words.include?(self)
        word_numbers = words.fetch(self)

# deals with tens
    elsif self.<(100)
      ones = words.fetch(self.%(10))
      tens = words.fetch(self.%(100).-(self.%(10)))
      word_numbers = tens.concat(" ").concat(ones)

#deals with hundreds
    elsif self.<(1000)
      ones = words.fetch(self.%(10))
      tens = words.fetch(self.%(100).-(self.%(10)))
      hundreds = words.fetch(self.%(1000)/100)
      word_numbers = hundreds.concat(" hundred ").concat(tens).concat(" ").concat(ones)

    elsif self.%(10).eql?(0) && self.<(10000)
      thousands = words.fetch(self%(10000)/1000)
      word_numbers = thousands.concat(" thousand")

#deals with thousands
    elsif self.<(10000)
      ones = words.fetch(self.%(10))
      tens = words.fetch(self.%(100).-(self.%(10)))
      hundreds = words.fetch(self.%(1000)/100)
      thousands = words.fetch(self%(10000)/1000)
      word_numbers = thousands.concat(" thousand ").concat(hundreds).concat(" hundred ").concat(tens).concat(" ").concat(ones)

#deals with ten thousand

    elsif self.<(100000)
      ones = words.fetch(self.%(10))
      tens = words.fetch(self.%(100).-(self.%(10)))
      hundreds = words.fetch(self.%(1000)/100)
      thousands = words.fetch(self%(10000)/1000)
      tenthousand = words.fetch((self/1000)-((self.%10000)/1000))
      word_numbers = tenthousand.concat(thousands).concat(" thousand ").concat(hundreds).concat(" hundred ").concat(tens).concat(" ").concat(ones)

    elsif self.%(10).eql?(0) && self.<(100000)
      hundredthousand = words.fetch(self/100000)
      word_numbers = tenthousand.concat(" thousand")

#deals with hundred thousands
    elsif self.<(100000)
      ones = words.fetch(self.%(10))
       tens = words.fetch(self.%(100).-(self.%(10)))
       hundreds = words.fetch(self.%(1000)/100)
       thousands = words.fetch(self%(10000)/1000)
       tenthousand = words.fetch(self.%(100000)/10000)
       hundredthousand = words.fetch(self/100000)
      word_numbers = hundredthousand.concat(" ").concat(" hundred ").concat(tenthousand).concat(" ").concat(thousands).concat(" thousand ").concat(hundreds).concat(" hundred ").concat(tens).concat(" ").concat(ones)

    elsif self.%(10).eql?(0) && self.<(1000000)
      word_numbers = hundredthousand.concat(" hundred thousand")

#deals with millions
    # elsif self.<(1000000)
    #   word_numbers = hundredthousand.concat(" ").concat(tenthousand).concat(" ").concat(thousands).concat(" thousand ").concat(hundreds).concat(" hundred ").concat(tens).concat(" ").concat(ones)
    # elsif self.%(10).eql?(0) && self.<(10000000)
      # word_numbers = million.concat(" million")


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
