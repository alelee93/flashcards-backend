class FlashcardSetSerializer < ActiveModel::Serializer
    attributes :name, :topic_id
    belongs_to :topic
    has_many :questions
end