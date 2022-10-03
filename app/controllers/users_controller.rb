class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
    @groups = Group.all
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ユーザーを追加しました"
      redirect_to top_path
    else
      render 'new'
    end
  end

  private 

    def user_params 
      params.require(:user).permit(:name, :group_id, :session_id)
    end

end
