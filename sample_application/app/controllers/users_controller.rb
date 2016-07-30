class UsersController < ApplicationController
  def new
  end

  def show
  	@id = params[:id]
  	@user = User.find(@id)
  end

  def list
  	@users = User.all
  end

  def index
  end

  def destroy
  	@users = User.all
  	@id = params[:id]
  	@user = User.find(@id)
  	if @user.destroy
  		@msg = "User deleted"
  		render 'list'
  	end
  end

	def update
  	@users = User.all
		@id = params[:id]		
		@user = User.find(@id)
		@user.email = params[:email]
		@user.username = params[:username]
		@user.age = params[:age]
		if @user.save
			@msg = "User updated"
			render "list"
		end
	end

  def edit
  	@id = params[:id]
  	@user = User.find(@id)
  end

  def create
  	@email = params[:email]
  	@username = params[:username]
  	@age = params[:age]
  	@user = User.new
  	@user.email = @email
  	@user.username = @username
  	@user.age = @age
  	if @user.save
  		@msg = "user saved "
  		render "new"
  	else
  		@msg = "Error while saving records "
  		render "new"
  	end
  end

end
