class HomeController < ApplicationController
  def index
    @json   = Event.find(:all).to_gmaps4rails
    @event  = Event.paginate(:page => params[:page], :per_page => 3)
    @group  = Group.paginate(:page => params[:page], :per_page => 3)
    @listing  = Listing.paginate(:page => params[:page], :per_page => 3)
  end

  def how_it_works
  end
  def privacy_policy
  end
  def terms_and_conditions 
  end
end
