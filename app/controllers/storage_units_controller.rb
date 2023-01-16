class StorageUnitsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    #before_action :authorized

    def index
        render json: StorageUnit.all
    end

    def show
        render json: StorageUnit.find(params[:id])
    end

    # def available
    #     @available = StorageUnit.find(params[:id])
    #     @available.update_attribute(:availability, false)
    # end
    
    private
    def record_not_found
        render json: { error: "Storage Unit Not Found" }, status: :not_found
    end
end
