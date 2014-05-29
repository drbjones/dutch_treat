class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :exepense_oweds
end
