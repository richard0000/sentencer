class EntityTypesController < ApplicationController
    def index
        @entity_types = EntityType.all
    end

    def show
        @entity_type = EntityType.find(params[:id])
    end
end
