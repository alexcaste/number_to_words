require('rspec')
require('number_to_words')
require('pry')

describe('Fixnum#number_to_words') do
 #the program converts a single digit number to its word format.
 it("takes the number and converts it to its word format") do
  expect(3.number_to_words()).to(eq("three"))
 end
end
