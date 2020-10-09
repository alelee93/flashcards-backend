class Topic < ApplicationRecord
    has_many :flashcard_sets
    has_many :questions, through: :flashcard_sets
end
