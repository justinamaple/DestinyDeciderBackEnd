class UsersController < ApplicationController
  def signin
    @user = User.find_by(email: params[:email])
    errors = {
      'errors': {
        'incorrect': 'email and/or password'
      }
    }

    if @user&.authenticate(params[:password])
      render json: { userId: @user.id }
    else
      render json: errors
    end
  end

  def signup
    @user = User.new(
      email: params[:email],
      password: params[:password],
      token: ''
    )

    if @user.save
      render json: { userId: @user.id }
    else
      render json: { 'errors': @user.errors }
    end
  end
end
