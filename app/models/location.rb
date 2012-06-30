class Location < ActiveRecord::Base

 belongs_to :profile
 has_many :listings
 
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['address LIKE ?', search_condition])
  end

  geocoded_by :address  
  after_validation :geocode  
  after_validation :geocode, :if => :address_changed?  

end
