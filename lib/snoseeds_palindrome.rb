# frozen_string_literal: true

require_relative "snoseeds_palindrome/version"

# module SnoseedsPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      scan(/[a-z]/i).join.downcase
    end
end
