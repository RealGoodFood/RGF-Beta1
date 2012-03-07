class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged

    def monthname(monthnumber)  
        if monthnumber  
            Date::MONTHNAMES[monthnumber]  
        end  
    end  

end
