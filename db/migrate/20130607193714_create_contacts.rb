class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :message
      t.string :messagetype

      t.timestamps
    end
  end
end