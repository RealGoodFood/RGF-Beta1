class Profile < ActiveRecord::Base
  
 validates_presence_of :full_name

 extend FriendlyId
 friendly_id :full_name, :use => :slugged

 acts_as_taggable_on :tags
 acts_as_tagger

 belongs_to :user
 belongs_to :listing
 belongs_to :eat_by_date
 belongs_to :food_category
 has_and_belongs_to_many :values
 has_many   :comments
 has_one    :location


  has_attached_file :photo,
     :styles  =>
      {
       :icon     =>    "50x50", 
       :thumb    =>    "100x100",
       :profile  =>    "247x231", 
       :small    =>    "400x400>"
      }



end
