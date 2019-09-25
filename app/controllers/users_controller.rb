class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update]
    # make auth for show

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else 
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def update
        @user = User.find_by(id: params[:id])
        
        if @user.update(user_params)
            render json: @user, status: 200
        else
            render json: { error: @user.errors.full_messages }, status: :not_acceptable
        end
    end


    private

    def user_params
        params.require(:user).permit(:id, :username, :password, :bio, :avatar)
    end
end
