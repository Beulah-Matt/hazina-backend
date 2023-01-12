class StorageUnitsController < ApplicationController
    def index
        render json: DeliveryService.all
    end
end
