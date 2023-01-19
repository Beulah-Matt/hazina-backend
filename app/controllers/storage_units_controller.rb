class StorageUnitsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    #before_action :authorized

    def index
        render json: StorageUnit.all
    end

    def show
        render json: StorageUnit.find(params[:id])
    end

    def create
        admin_id = decoded_token[0]['admin_id']
        storage_unit = StorageUnit.create!(admin_id: admin_id, size: params[:size], storage_type: params[:storage_type], rental_rate: params[:rental_rate],
        photo_url: params[:photo_url], location: params[:location], availability: params[:availability])
        render json: storage_unit
    end


    private
    def record_not_found
        render json: { error: "Storage Unit Not Found" }, status: :not_found
    end

    def storage_params
        params.permit(:admin_id, :storage_type, :rental_rate, :size, :photo_url, :location, :availability)
    end
end
#storage_unit16 = StorageUnit.create( admin_id: admin1.id, storage_type: "General Storage", rental_rate: 24000, size: "Warehouse", availability: "true",

#photo_url: "https://images.unsplash.com/photo-1624008915317-cb3ad69b16ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3RvcmFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", location: "Westlands")