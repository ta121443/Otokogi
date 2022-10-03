class GroupsController < ApplicationController
  def new 
    @group = Group.new
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

  private 

  def group_params 
    params.require(:group).permit(:name, :session_id)
  end
end
