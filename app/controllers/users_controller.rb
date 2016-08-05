class UsersController < ApplicationController
  def new

  end
  def index
  end
  def create
	# @page_title = "New User"
	# @email = params[:email]
	# @password = params[:password]
	# @user = User.new
	# @user.email = @email
	# @user.password = @password
	# if @user.save
	# 	@msg = "User saved successfully"
	# 	render 'new'
	# end
  @user = User.new(user_params)
  if @user.valid?
   @user.save
    @msg = "User saved successfully"
  else
    @errors = @user.errors.full_messages    
  end
    render 'new'

  end

  def destroy 
  	@id = params[:id]
  	@user = User.find(@id)
  	if @user.destroy
  		redirect_to :action=>"show"	
  	end
  end

def update
  @id = params[:id]
  @user = User.find(@id)
  if @user.update_attributes(user_params)
    @msg = "User updated successfully"
    @users = User.all
    render "list"
  else
    @errors = @user.errors.full_messages
    render "edit"
  end
end


  def edit
    @id = params[:id]
    @user = User.find(@id)
  end


  def list
    @users = User.all
  end

  def show
  	@users = User.all
  end

  def user_params
    return params.require(:user).permit(:email,:password)
  end
end