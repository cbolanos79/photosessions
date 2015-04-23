class Session < ActiveRecord::Base
  has_and_belongs_to_many :gears
  has_and_belongs_to_many :users
  belongs_to :user, :foreign_key => "user_id"

  validates_presence_of :user, :session_type, :status, :datetime
end
