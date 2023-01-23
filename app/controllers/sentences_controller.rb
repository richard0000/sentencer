class SentencesController < ApplicationController
    def index
        @sentences = Sentence.all
    end

    def show
        @sentence = Sentence.find(params[:id])
    end

    def destroy
        EntityType.destroy!(params[:id])
    end
end
