class StorageUnitsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    #before_action :authorized

    def index
        render json: StorageUnit.all
    end
end
