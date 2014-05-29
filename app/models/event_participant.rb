class EventParticipant < ActiveRecord::Base

  validates_uniqueness_of :user_id, scope: :event_id
  validates(:user_id, :presence => :true)

  belongs_to :event
  belongs_to :user
end
