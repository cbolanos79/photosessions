class CreateUsersSessions < ActiveRecord::Migration
  def change
    create_table :sessions_users, id: false do |t|
      t.belongs_to :session, index: true
      t.belongs_to :user, index: true
    end
  end
end
