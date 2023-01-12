class AdminsController < ApplicationController
    def index
        render json: Admin.all
    end
end
