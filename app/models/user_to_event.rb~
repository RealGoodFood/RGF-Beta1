class UserToEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

attr_accessible :user_id, :event_id, :owner_id, :state

# validates_uniqueness_of :user_id, :message => "You can only join one event!"
 validates :user_id, :uniqueness => {:scope => :event_id}

include Workflow

workflow_column :state

workflow do
   state :request_sent do
     event :accept, :transitions_to => :accepted
     event :reject, :transitions_to => :rejected
   end
   state :accepted
   state :rejected
 end

end
