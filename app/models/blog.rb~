class Blog < ActiveRecord::Base
  paginates_per 2
  extend FriendlyId
  friendly_id :title, :use => :slugged

    def monthname(monthnumber)  
        if monthnumber  
            Date::MONTHNAMES[monthnumber]  
        end  
    end  

end
