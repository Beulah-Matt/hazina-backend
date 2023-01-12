class AuthController < ApplicationController
      before_action :authorized, only:[:destroy]
    def create
        customer = Customer.find_by!(name: params[:name])
        if customer &.authenticate(params[:password])
            token = encode_token(customer_id: customer.id)
            render json: { customer: CustomerSerializer.new(customer), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end

    def destroy
        head :no_content
    end
end
