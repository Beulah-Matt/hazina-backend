class CustomerStoragesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    #before_action :authorized
    require 'date'
    
    def index
        customer_id = decoded_token[0]['customer_id']
        customer = Customer.find(customer_id)
        customerStorage = customer.customer_storages
        render json: customerStorage
    end

    def create
        # byebug
        customer_id = decoded_token[0]['customer_id']
        storage_unit = StorageUnit.find(params[:storage_unit_id])
        storage_cost = storage_unit.rental_rate
        rental_start = params[:start_date].gsub(", ", "/").to_date
        rental_end = params[:end_date].gsub(", ", "/").to_date 
        days_selected = Integer(rental_end - rental_start)
        total_amount = storage_cost.to_i * params[:count].to_i * days_selected.to_i
        customer_storage = CustomerStorage.create!(customer_id: customer_id, storage_unit_id: params[:storage_unit_id], count: params[:count], start_date: rental_start, end_date: rental_end, days: days_selected, total_cost: total_amount)
        render json: customer_storage, status: :accepted
    end

    # def update
    #     customer_id = decoded_token[0]['customer_id']
    #     customer_storage = CustomerStorage.find_by!(id: params[id], customer_id: customer_id)
    #     storage_unit = StorageUnit.find(params[:storage_unit_id])
    #     storage_cost = storage_unit.rental_rate
    #     rental_start = params[:start_date].gsub(", ", "/").to_date
    #     rental_end = params[:end_date].gsub(", ", "/").to_date 
    #     days_selected = Integer(rental_end - rental_start)
    #     total_amount = storage_cost.to_i * params[:count].to_i * days_selected.to_i
    #     customer_storage.update!(count: params[:count], start_date: rental_start, end_date: rental_end, days: days_selected, total_cost: total_amount)
    # end

    private
    def record_not_found
        render json: { error: "Storage Unit Not Found" }, status: :not_found
    end
 
end
