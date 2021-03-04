class PantriesController < ApplicationController

    def show
        @pantry = Pantry.find_by_id(pantry_params)
    end

    private

    def pantry_params
        params.require(:id)
    end

end
