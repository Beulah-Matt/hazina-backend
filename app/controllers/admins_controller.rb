class AdminsController < ApplicationController
    def index
        render json: Admin.all
    end


    def create
        admin = Admin.create!(admin_params)
        if admin.valid?
            token = encode_token(admin_id: admin.id)
            render json: {admin: AdminSerializer.new(admin), jwt: token}, status: :created
        else
            render json: {errors: admin.errors.full_messages}, status: :unprocessable_entity
        end
    end
   

    def authenticate
        admin = Admin.find_by!(name: params[:name])
        if admin &.authenticate(params[:password])
            token = encode_token(admin_id: admin.id)
            render json: { admin: AdminSerializer.new(admin), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end

    def show
        admin_id = decoded_token[0]['admin_id']
        admin = Admin.find(admin_id)
        render json: admin
    end

    private
    def admin_params
        params.permit(:name, :email, :password)
    end

end
