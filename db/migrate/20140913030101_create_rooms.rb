class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :fotoroom
      t.text :description

      t.timestamps
    end
  end
end