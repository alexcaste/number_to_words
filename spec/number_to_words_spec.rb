require('rspec')
require('number_to_words')
require('pry')

describe('Fixnum#number_to_words') do
 #the program converts a single digit number to its word format.
 it("takes the number and converts it to its word format") do
  expect(3.number_to_words()).to(eq("three"))
 end

  #the program converts a double digit number into its word format
  it("converts double digit numbers into words") do
    expect(55.number_to_words()).to(eq("fifty five"))
  end
  #the program converts triple digit numbers into its word format
  it("converts triple digit number into words") do
    expect(189.number_to_words()).to(eq("one hundred eighty nine"))
  end

  #the program prints zero when 0 is entered
  it("converts 0 to the word zero") do
    expect(0.number_to_words()).to(eq("zero"))
  end

  #the program converts quadruple digit numbers into its word format
  it("converts quadruple digit numbers into words") do
    expect(5678.number_to_words()).to(eq("five thousand six hundred seventy eight"))
  end

  #the program converts quadruple digit numbers into its word format
  it("converts quintuple digit numbers into words") do
    expect(56789.number_to_words()).to(eq("fifty six thousand seven hundred eighty nine"))
  end
end
