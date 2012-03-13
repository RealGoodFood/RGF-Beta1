class User < ActiveRecord::Base
  has_many :authentications
  has_one :profile

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

has_many :friendships
has_many :friends, :through => :friendships
has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
has_many :inverse_friends, :through => :inverse_friendships, :source => :user




#  has_many :friendships
#  has_many :friends, :through => :friendships  
#  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
#  has_many :direct_friends, :through => :friendships, :conditions => "approved = true", :source => :friend
#  has_many :inverse_friends, :through => :inverse_friendships, :conditions => "approved = true", :source => :user

#  has_many :pending_friends, :through => :friendships, :conditions => "approved = false", :foreign_key => "user_id", :source => :user
#  has_many :requested_friendships, :class_name => "Friendship", :foreign_key => "friend_id", :conditions => "approved = false"

 # def friends
 #   direct_friends | inverse_friends
 # end



end
