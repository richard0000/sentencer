class EntitiesController < ApplicationController
    def index
        @entities = Entity.all
    end

    def show
        @entity = Entity.show(params[:id])
    end

    def destroy
        Entity.destroy!(params[:id])
    end
end
