class UsersController < ApplicationController
    def sign_up
        
        @user = user.create(first_name: params[:first_name],
        last_name: params[:last_name],
         email: params[:email],password: params[:password])
        if @user.errors.present?
            render json: {success: false,errors: errors}
        else
            authentication_token = AuthToken.encode(user_id: @user.id)
            render json: {success: true,user: @user.serializable_hash,authentication_token: authentication_token}
        end
    end


    def log_in
    
        @user = User.find_by(email: params[:email])
        if @user.present && user.valid_password?(params[:password])
        authentication_token = AuthToken.encode(user_id: @user.id)
        render json: { 
             data:ActiveModelSerializers::SerializableResource.new(@user,serializer: Userserializer)
             success: true,user: @user.serializable_hash,authentication_token: authentication_token}
        else
            render json: {success:false, message"Invalid user or password"}
        end
            



    end


end
