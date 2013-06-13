class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :serialnumber
      t.string :title
      t.integer :section
      t.integer :course
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end
end
