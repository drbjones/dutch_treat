class Event < ActiveRecord::Base

  has_many :expenses
  has_many(:users, {:through => :event_participants})
  has_many :event_participants

end
