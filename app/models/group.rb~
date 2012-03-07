class Group < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, :use => :slugged

has_attached_file :photo,
     :styles => {
       :thumb=> "100x100#",
       :small  => "400x400>" }


end
