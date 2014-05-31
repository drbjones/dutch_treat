class Expense < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :expense_oweds

  validates(:amount, :presence => :true)
  validates(:description, :presence => :true)
end
