class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name, :owner
      t.boolean :borrowed
      t.timestamps null: false
    end
  end
end
