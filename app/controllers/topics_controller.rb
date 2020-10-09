class TopicsController < ApplicationController
    def index

        

        topics = Topic.all
        render json: topics 
    end

    def show
        if params[:flashcard_set_id]
            flashcard_sets = FlashcardSet.find_by(topic_id: params[:id])
            render json: flashcard_sets
        else
            topic = Topic.find(params[:id])
            render json: topic
        end
    end
end

