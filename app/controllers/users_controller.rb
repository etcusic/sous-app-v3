class UsersController < ApplicationController

    def show
        binding.pry
        @user = User.find_by_id(1)
    end

    private

    def user_params
        params.require(:id)
    end

end
