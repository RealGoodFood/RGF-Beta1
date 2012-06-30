class UserToGroupsController < ApplicationController

  def create
    @user_to_groups = UserToGroup.create!( :user_id => current_user.id, :group_id => params[:gr_id])
     if @user_to_groups.save 
      redirect_to group_path(@user_to_groups.group.slug)
     end
  end

end
