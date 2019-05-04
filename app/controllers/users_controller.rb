class UsersController < ApplicationController
  def show
    @posts = current_user.posts.order(created_at: :desc)
  end

  def edit
    # create a user instance variable to use in User views
    # by returning the user with a specific id
    @user = User.find(params[:id])
  end

  def update
    # update the current user based on the parameters in the form 
    # current_user.update(params[:user])
    current_user.update(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params.required(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender, :avatar)
  end
end