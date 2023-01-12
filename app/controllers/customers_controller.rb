class CustomersController < ApplicationController
    before_action :authorized, only: [:show]

    def index
        render json: Customer.all
    end

    def create
        customer = Customer.create!(customer_params)
        if customer.valid?
            token = encode_token(customer_id: customer.id)
            render json: {customer: CustomerSerializer.new(customer), jwt: token}, status: :created
        else
            render json: {errors: customer.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        customer_id = decoded_token[0]['customer_id']
        customer = Customer.find(customer_id)
        render json: customer
    end

    private

    def customer_params
        params.permit(:name, :email, :password, :phone_number, :photo_url, :location)
    end
end
