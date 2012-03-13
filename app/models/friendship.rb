class Friendship < ActiveRecord::Base
  include Amistad::FriendshipModel

  belongs_to :user
  belongs_to :friend, :class_name => "User"


end
