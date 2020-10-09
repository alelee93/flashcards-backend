class TopicSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :flashcard_sets
    has_many :questions, through: :flashcard_sets
end