class UsersController < ApplicationController
  def new

  end

  def index
  end

  def create
  	@page_title = "New User"
  	@email = params[:email]
  	@password = params[:password]
  	@user = User.new
  	@user.email = @email
  	@user.password = @password
  	if @user.save
  		@msg = "User saved successfully"
  		render 'new'
  	end
  end


  def show
  end
end
