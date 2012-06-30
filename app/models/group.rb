class Group < ActiveRecord::Base

  has_many :users
  has_many :posts
  has_many :user_to_groups

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_attached_file :photo,
     :styles => {
       :thumb=> "100x100#",
       :small  => "400x400>" }


end
