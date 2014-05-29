class User < ActiveRecord::Base

  has_many(:events, {:through => :event_participants})
  has_many :expenses
  has_many :expense_oweds
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
