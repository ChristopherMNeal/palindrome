require('rspec')
require('palindromes.rb')

describe ("#pal_checker") do
  it("returns false if the text is not a palindrome") do
    text = Text.new("this is not a palindrome")
    expect(text.pal_checker()).to(eq(false))
  end
  it("returns true if the text is a one-word palindrome") do
    text = Text.new("kayak")
    expect(text.pal_checker()).to(eq(true))
  end
  it("returns true if the text is a multi-word palindrome") do
    text = Text.new("a man, a plan, a canal, panama")
    expect(text.pal_checker()).to(eq(true))
  end
end

# teh a man, a plan, a one c ewoanal, panama fin