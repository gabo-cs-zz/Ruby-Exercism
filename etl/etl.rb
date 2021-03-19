# frozen_string_literal: true

# We are going to do the Transform step of an Extract-Transform-Load.
# The goal: To extract some scrabble scores from a legacy system.
class ETL
  class << self
    def transform(old_scores_system)
      old_scores_system.each_with_object({}) do |(key, value), new_scores_system|
        value.each { |letter| new_scores_system[letter.downcase] = key }
      end
    end
  end
end
