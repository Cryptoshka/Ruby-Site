class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :year
      t.text :program
      t.text :books
      t.string :tpcheckbox

      t.timestamps
    end
  end
end