class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :session_type
      t.timestamp :datetime
      t.string :place_name
      t.string :place_coordinates  #TODO: change to coordinates fields or use a maps gem
      t.text :dressing
      t.text :props
      t.text :makeup
      t.text :hair
      t.string :status
      t.text :description
      t.text :annotations
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
