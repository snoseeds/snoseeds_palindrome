# frozen_string_literal: true

require_relative "snoseeds_palindrome/version"

module SnoseedsPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content.length > 0 && processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include SnoseedsPalindrome
end

class Integer
  include SnoseedsPalindrome
end