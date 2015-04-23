class CreateGearsSessions < ActiveRecord::Migration
  def change
    create_table :gears_sessions, id: false do |t|
      t.belongs_to :gear, index: true
      t.belongs_to :session, index: true
    end
  end
end
