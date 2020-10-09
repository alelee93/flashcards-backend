class QuestionSerializer < ActiveModel::Serializer
    attributes :id, :question, :answer, :flashcard_set_id
    belongs_to :flashcard_set
end