class FlashcardSetsController < ApplicationController
    
    def show

        flashcard_set = FlashcardSet.find_by(id: params[:id])
        render json: flashcard_set
    end

    def index
        if params[:topic_id]
            flashcard_sets = FlashcardSet.where(topic_id: params[:topic_id])
            render json: flashcard_sets
        else
        flashcard_sets = FlashcardSet.all
            render json: flashcard_sets
        end
    end
   
end
