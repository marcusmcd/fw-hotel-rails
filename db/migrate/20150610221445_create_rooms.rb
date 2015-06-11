class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.boolean :reserved

      t.timestamps
    end
  end
end
