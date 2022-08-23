require 'pry'
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? do  |block| # will return true if all blocks return false
#     # binding.pry
#     up_string.count(block) >= 2 # ensures block is not used twice
#   end
# end

def block_word?(string)
  word_blocks = []
  string_letters = string.upcase.chars

  BLOCKS.each do |block|
    string_letters.each do |ltr|
      next if word_blocks.include?([ltr])
      if block.chars.include?(ltr)
        word_blocks << ltr
        break
      else
        ltr
      end
    end
  end

  word_blocks.sort.join == string.upcase.chars.sort.join
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true