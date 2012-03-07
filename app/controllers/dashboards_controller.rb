class DashboardsController < ApplicationController

 def index
  @my_listings = Listing.paginate(:page => params[:page],
                                  :conditions => ['user_id = ?', current_user],
                                  :per_page => 5)

  @event = Event.paginate(:page => params[:page],
                          :conditions => ['user_id = ?', current_user],
                          :per_page => 5)

  @requested_event = MemberAttendingEventRegister.find_all_by_owner_id_and_state(current_user, 'request_sent')

  @group = Group.paginate(:page => params[:page],
                          :conditions => ['user_id = ?', current_user],
                          :per_page => 5)

  @latest_event = Event.where(:created_at => 1.days.ago .. 1.days.from_now)

  @users = User.all  

 end

end
