class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      redirect_to("/users/" + @user.id.to_s)
      flash[:success] = "Profil utilisateur créé"
      log_in(@user)
    else
      flash[:danger] = "bug"
      render 'new'
    end
  end

  def edit
    @user = current_user
    # if no user logged
    if @user == nil
      redirect_to login_path
      # go to edit page
    elsif @user.id == params[:id].to_i
      # else case are wrong users
    else
      redirect_to login_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation)
  end
end
