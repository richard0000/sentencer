class EntitiesController < ApplicationController
    def index
        @entities = Entity.all
    end

    def show
        @entity = Entity.show(params[:id])
    end
end
