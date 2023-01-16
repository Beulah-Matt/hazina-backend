class DeliveryServicesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: DeliveryService.all
    end

    def show
        render json: DeliveryService.find(params[:id])
    end

    private
    def record_not_found
        render json: {error: "Sorry, We currently do not use that delivery method"}, status: :not_found
    end

end
