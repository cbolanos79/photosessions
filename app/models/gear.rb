class Gear < ActiveRecord::Base
  has_and_belongs_to_many :sessions

  validates_presence_of :name
end
