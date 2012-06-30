class Event < ActiveRecord::Base

  has_many :user_to_events
  has_many :groups  
#  has_many :potlucks
  has_many :member_attending_event_registers, :dependent => :destroy
  has_many :users, :through => :member_attending_event_registers
  
  belongs_to :profile
  belongs_to :user
  belongs_to :event_category
  has_and_belongs_to_many :listings

#  accepts_nested_attributes_for :potlucks

  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_attached_file :photo,
     :styles  =>
      {
       :icon     =>    "50x50", 
       :thumb    =>    "90x90",
       :profile  =>    "150x150", 
       :small    =>    "400x400>"
      }  

   geocoded_by :event_address
   #geocoded_by :address   # can also be an IP address
   after_validation :geocode          # auto-fetch coordinates
   reverse_geocoded_by :latitude, :longitude
   after_validation :reverse_geocode  # auto-fetch address


geocoded_by :event_address

def event_address
  [street, city, state, zip, country].compact.join(', ')
end

end
