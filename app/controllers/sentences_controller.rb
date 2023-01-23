class SentencesController < ApplicationController
    def index
        Sentence.all
    end

    def show
        Sentence.find(params[:id])
    end
end
