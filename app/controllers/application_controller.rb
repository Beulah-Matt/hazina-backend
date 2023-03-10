class ApplicationController < ActionController::API
    # protect_from_forgery with: :null_session
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method

    def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'my_s3cr3t')
    end

    def auth_header
    request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_customer
        if decoded_token
            customer_id = decoded_token[0]['customer_id']
            customer = Customer.find_by(id: customer_id)
        end
    end

    def current_admin
        if decoded_token
            admin_id = decoded_token[0]['admin_id']
            admin = Admin.find_by(id: admin_id)
        end
    end

    def admin_logged_in
        !!current_admin
    end
    
    def logged_in?
        !!current_customer
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
    private
    def unprocessable_entity_method e
        render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
    end
end
