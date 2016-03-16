class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :universita
      t.datetime :tutorie
      t.text :add_info
      t.string :foto

      t.timestamps
    end
  end
end