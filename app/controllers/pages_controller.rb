class PagesController < InheritedResources::Base
authorize_resource :only => [:index, :show]
end
