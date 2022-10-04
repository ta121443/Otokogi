class SessionsController < ApplicationController

  def top    
    @users = User.where("session_id = ?", params[:session_id])
    @user = User.first
  end
end
