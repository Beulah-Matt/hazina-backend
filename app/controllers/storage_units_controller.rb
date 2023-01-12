class StorageUnitsController < ApplicationController
    def index
        render json: StorageUnit.all
    end
end
