class EntityTypesController < ApplicationController
    def index
        EntityType.all
    end

    def show
        EntityType.find(params[:id])
    end
end
