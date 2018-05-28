class UsersController < ApplicationController
def show
    @user = User.find(params[:id])
end
def new
    @user = User.new
end
def edit
    @user = User.find(params[:id])
end
def create
    # byebug   use to check for errors, see notebook notes
    permitted_params = params.require(:user).permit(:first_name, :email)
    @user = User.new permitted_params
    if @user.save then
    redirect_to @user
    else
    render :new
end   
end
end
