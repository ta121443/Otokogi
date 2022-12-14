class GroupsController < ApplicationController
  def index 
    @groups = Group.all
    @nongroup = User.where("group_id IS NULL")
  end

  def new 
    @group = Group.new
    @users = User.all
    @groups = Group.all
    @nongroup = User.where("group_id = ?", nil)
  end

  def create 
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "グループを追加しました"
      redirect_to top_path
    else
      render 'new'
    end    
  end

  def destroy
    Group.find(params[:id]).destroy
    flash[:success] = "グループを削除しました"

    respond_to do |format|
      format.html { redirect_to top_path, notice: "削除してもよろしいですか？", status: :see_other }
    end
  end

  private 

  def group_params 
    params.require(:group).permit(:name, :session_id)
  end
end
