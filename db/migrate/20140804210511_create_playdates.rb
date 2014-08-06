class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.references :user
      t.references :puppy
      t.datetime :time
      t.integer :attendees

      t.timestamps
    end
  end
end
